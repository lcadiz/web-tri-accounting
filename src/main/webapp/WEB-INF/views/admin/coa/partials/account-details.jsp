<div class="row">
    <div class="col-md-12 col-lg-12">
        <button class="btn btn-primary" onclick="(window.location.href = '#/accounts')">Chart of Accounts</button>
        <button class="btn btn-primary" onclick="(window.location.href = '#/new')">Add</button>
        <button class="btn btn-primary" onclick="(window.location.href = '#/new')">Edit</button>
    </div>
</div>
<div style="margin-top: 20px;"></div>
<div class="row">
    <div class="col-md-12 col-lg-12">
        <div class="alert alert-info">{{ title }}</div>
    </div>
</div>
<div class="row">
    <div class="col-md-12 col-lg-12">
        <div class="col-md-2 col-lg-2">
            <label class="input-label">Code</label>
        </div>
        <div class="col-md-10 col-lg-10">
            <label class="value-label">{{ account.code }}</label>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-md-12 col-lg-12">
        <div class="col-md-2 col-lg-2">
            <label class="input-label">Title</label>
        </div>
        <div class="col-md-10 col-lg-10">
            <label class="value-label">{{ account.title }}</label>
        </div>
    </div>
</div>


<div class="row">
    <div class="col-md-12 col-lg-12">
        <div class="col-md-2 col-lg-2">
            <label class="input-label">GL Account</label>
        </div>
        <div class="col-md-10 col-lg-10">
            <label class="value-label">{{ account.glaccount }}</label>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-md-12 col-lg-12">
        <div class="col-md-2 col-lg-2">
            <label class="input-label">SL Account</label>
        </div>
        <div class="col-md-10 col-lg-10">
            <label class="value-label">{{ account.slaccount }}</label>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-md-12 col-lg-12">
        <div class="col-md-2 col-lg-2">
            <label class="input-label">Auxiliary Account</label>
        </div>
        <div class="col-md-10 col-lg-10">
            <label class="value-label">{{ account.auxAccount }}</label>
        </div>
    </div>
</div>


<div class="row">
    <div class="col-md-12 col-lg-12">
        <div class="col-md-2 col-lg-2">
            <label class="input-label">Normal Balance</label>
        </div>
        <div class="col-md-10 col-lg-10">
            <label class="value-label">{{ account.normalBalance == 1 ? 'Debit' : 'Credit' }}</label>
        </div>
    </div>
</div>


<div class="row">
    <div class="col-md-12 col-lg-12">
        <div class="col-md-2 col-lg-2">
            <label class="input-label">Group</label>
        </div>
        <div class="col-md-10 col-lg-10">
            <label class="value-label">{{ account.group }}</label>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-md-12 col-lg-12">
        <div class="col-md-2 col-lg-2">
            <label class="input-label">Type</label>
        </div>
        <div class="col-md-10 col-lg-10">
            <label class="value-label">{{ account.type }}</label>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-md-12 col-lg-12">
        <div class="col-md-2 col-lg-2">
            <label class="input-label">Parent Account</label>
        </div>
        <div class="col-md-10 col-lg-10">
            <label class="value-label">{{ account.parentAccount }}</label>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-md-12 col-lg-12">
        <div class="col-md-2 col-lg-2">
            <label class="input-label">Active</label>
        </div>
        <div class="col-md-10 col-lg-10">
            <label class="value-label">{{ account.isActive == 1 ? 'Yes' : 'No' }}</label>
        </div>
    </div>
</div>


<div class="row">
    <div class="col-md-12 col-lg-12">
        <div class="col-md-2 col-lg-2">
            <label class="input-label">Has SL</label>
        </div>
        <div class="col-md-10 col-lg-10">
            <label class="value-label">{{ account.hasSL == 1 ? 'Yes' : 'No' }}</label>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-md-12 col-lg-12">
        <div class="col-md-2 col-lg-2">
            <label class="input-label">Header</label>
        </div>
        <div class="col-md-10 col-lg-10">
            <label class="value-label">{{ account.isHeader == 1 ? 'Yes' : 'No' }}</label>
        </div>
    </div>
</div>