Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E99BC99E3FC
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Oct 2024 12:33:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8C21260891;
	Tue, 15 Oct 2024 10:33:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lwNX72gjIZ5I; Tue, 15 Oct 2024 10:33:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1A09860895
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728988380;
	bh=RhKkCADgY08hUoIVRKrHobZvX8wPHvkWoHgQOM1tqPE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=yD013U1cvuQNYMOwBuMHUkWGxHlRdtHVpa+tNFUJMbkDjMqFfcBkuhp8FYTefcUrB
	 YVuPVWJWq+sCZOPDW6JWpsRQtO6af6WCmOqFYMgGf42FgBYPhkbJEw94KO4EyVZZiK
	 fX7L7yG28IVwhm/kYEWPLtLob1eVqDNixcPrDNDXs1FSGHLCEHc4VjAOyHRMj+Jwvo
	 zCuavMovqZ8A+dYT2Go1rwXM7amTlnLBXoX/aXVkT2eGW20MDlSWPSk+PnTtAbz5De
	 eg0m1bLrjPp6Di2bugFhto6ygUN1YrRUfk7k4wlLdoGV7qpx8HTVFD++vILCvt6kIt
	 lYUknME4ewuNw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1A09860895;
	Tue, 15 Oct 2024 10:33:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2BFBF1BF5DC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Oct 2024 10:32:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 17E844027D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Oct 2024 10:32:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UE0cK-_iBXAZ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Oct 2024 10:32:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0F6D44027C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0F6D44027C
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0F6D44027C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Oct 2024 10:32:54 +0000 (UTC)
Received: from [141.14.220.45] (g45.guest.molgen.mpg.de [141.14.220.45])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 88A1361E5FE05;
 Tue, 15 Oct 2024 12:32:38 +0200 (CEST)
Message-ID: <4435dade-5c41-43a1-aeab-58e2d262545f@molgen.mpg.de>
Date: Tue, 15 Oct 2024 12:32:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
References: <20241015070450.1572415-1-aleksandr.loktionov@intel.com>
 <011cfa1f-d7df-4d38-ba5d-7820176ebf8b@molgen.mpg.de>
 <SJ0PR11MB586684C1B9995B605D83CF71E5452@SJ0PR11MB5866.namprd11.prod.outlook.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <SJ0PR11MB586684C1B9995B605D83CF71E5452@SJ0PR11MB5866.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] i40e: fix "Error
 I40E_AQ_RC_ENOSPC adding RX filters on VF" issue
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Cc: Anthony L Nguyen <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 netdev@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Aleksandr,


Thank you for your reply. Just a note at the beginning, that your mailer 
seems to wrap lines without preserving the right citation level. It’d be 
great if you used a mailer following standards. (I know, it’s hard in a 
corporate environment, but other Intel developers seem to have found 
solutions for this.)


Am 15.10.24 um 11:45 schrieb Loktionov, Aleksandr:

>> -----Original Message-----
>> From: Paul Menzel <pmenzel@molgen.mpg.de>
>> Sent: Tuesday, October 15, 2024 10:24 AM

>> Thank you for your patch. For the summary I’d make it more about the
>> action of the patch like “Add intermediate filter to …”.
> 
> Sorry, I don't get your point. This patch fixes bug that can stop
> vfs to receive any traffic making them useless. The first and most
> visible effect of the bug is a lot of "Error I40E_AQ_RC_ENOSPC
> adding RX filters on VF XX,..." errors from F/W complaining to add
> MAC/VLAN filter. So I've mentioned it in the title to be easy found. 
> I don't add any filter in the driver, we have to add one more
> intermediate state of the filter to avoid the race condition.

In my opinion, having the log in the body is good enough for search 
engines and the summary should be optimized for `git log --oneline` 
consumption. I am sorry about the confusion with my example. Maybe:

Add intermediate sync state to fix race condition

>> Am 15.10.24 um 09:04 schrieb Aleksandr Loktionov:
>>> Fix a race condition in the i40e driver that leads to MAC/VLAN filters
>>> becoming corrupted and leaking. Address the issue that occurs under
>>> heavy load when multiple threads are concurrently modifying MAC/VLAN
>>> filters by setting mac and port VLAN.
>>>
>>> 1. Thread T0 allocates a filter in i40e_add_filter() within
>>>           i40e_ndo_set_vf_port_vlan().
>>> 2. Thread T1 concurrently frees the filter in __i40e_del_filter() within
>>>           i40e_ndo_set_vf_mac().
>>> 3. Subsequently, i40e_service_task() calls i40e_sync_vsi_filters(), which
>>>           refers to the already freed filter memory, causing corruption.
>>>
>>> Reproduction steps:
>>> 1. Spawn multiple VFs.
>>> 2. Apply a concurrent heavy load by running parallel operations to change
>>>           MAC addresses on the VFs and change port VLANs on the host.
>>
>> It’d be great if you shared your commands.

> Sorry, I'm pretty sure it's quite impossible to reproduce the issue
> with bash scripts /*I've tried really hard*/. Reproduction is
> related to user-space/kernel code which might be not open-sourced.
> So as I've explained in the commit title the race condition
> possibility that was introduced from the very beginning.

Could you please ask to get clearance to publish it. My naive view 
wonders, why legal(?) should oppose publication.

>>> 3. Observe errors in dmesg:
>>> "Error I40E_AQ_RC_ENOSPC adding RX filters on VF XX,
>>>    please set promiscuous on manually for VF XX".
>>
>> I’d indent it by eight spaces and put it in one line.
> Ok, I'll fix it in v2
> 
>>> The fix involves implementing a new intermediate filter state,
>>> I40E_FILTER_NEW_SYNC, for the time when a filter is on a tmp_add_list.
>>> These filters cannot be deleted from the hash list directly but
>>> must be removed using the full process.
>>
>> Please excuse my ignorance. Where is that done in the diff? For me it
>> looks like you only replace `I40E_FILTER_NEW` by `I40E_FILTER_NEW_SYNC`
>> in certain places, but no new condition for this case.
>
> Here are below the code which adds new I40E_FILTER_NEW_SYNC enum. 
> And additional conditions for this I40E_FILTER_NEW_SYNC state. All
> other places in the driver just tract I40E_FILTER_NEW_SYNC as not
> just I40E_FILTER_NEW by default.
Thank you. For me it’s not so obvious from the diff, and indeed, it’s 
done in `i40e_sync_vsi_filters()`. Thank you again.

>>> Fixes: 278e7d0b9d68 ("i40e: store MAC/VLAN filters in a hash with the MAC Address as key")
>>> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>>> ---
>>>    drivers/net/ethernet/intel/i40e/i40e.h         |  2 ++
>>>    drivers/net/ethernet/intel/i40e/i40e_debugfs.c |  2 ++
>>>    drivers/net/ethernet/intel/i40e/i40e_main.c    | 12 ++++++++++--
>>>    3 files changed, 14 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/drivers/net/ethernet/intel/i40e/i40e.h
>> b/drivers/net/ethernet/intel/i40e/i40e.h
>>> index 2089a0e..a1842dd 100644
>>> --- a/drivers/net/ethernet/intel/i40e/i40e.h
>>> +++ b/drivers/net/ethernet/intel/i40e/i40e.h
>>> @@ -755,6 +755,8 @@ enum i40e_filter_state {
>>>    	I40E_FILTER_ACTIVE,		/* Added to switch by FW */
>>>    	I40E_FILTER_FAILED,		/* Rejected by FW */
>>>    	I40E_FILTER_REMOVE,		/* To be removed */
>>> +	/* RESERVED */
>>
>> Why the reserved comment? Please elaborate in the commit message.
> 
> This is for not breaking compatibility with different driver
> versions. Between OOT, net-next and plain old net. Isn't it obvious
> from the comment, it's "RESERVERD"?

Apparently not, otherwise I wouldn’t ask. ;-)

> Can you provide me example commit message what I should follow?

There are people reading the code not familiar with the ecosystem, that 
there is an out of tree driver fore example. So the code or the commit 
message should have an explanation why `I40E_FILTER_NEW_SYNC = 6` and 
what the reserved is used for.

>>> +	I40E_FILTER_NEW_SYNC = 6,	/* New, not sent, in sync task */

Also mention the hash list in the comment?

>>>    /* There is no 'removed' state; the filter struct is freed */
>>>    };
>>>    struct i40e_mac_filter {
>>> diff --git a/drivers/net/ethernet/intel/i40e/i40e_debugfs.c b/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
>>> index abf624d..1c439b1 100644
>>> --- a/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
>>> +++ b/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
>>> @@ -89,6 +89,8 @@ static char *i40e_filter_state_string[] = {
>>>    	"ACTIVE",
>>>    	"FAILED",
>>>    	"REMOVE",
>>> +	"<RESERVED>",
>>> +	"NEW_SYNC",
>>>    };
>>>
>>>    /**
>>> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
>>> index 25295ae..55fb362 100644
>>> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
>>> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
>>> @@ -1255,6 +1255,7 @@ int i40e_count_filters(struct i40e_vsi *vsi)
>>>
>>>    	hash_for_each_safe(vsi->mac_filter_hash, bkt, h, f, hlist) {
>>>    		if (f->state == I40E_FILTER_NEW ||
>>> +		    f->state == I40E_FILTER_NEW_SYNC ||
>>>    		    f->state == I40E_FILTER_ACTIVE)
>>>    			++cnt;
>>>    	}
>>> @@ -1441,6 +1442,8 @@ static int i40e_correct_mac_vlan_filters(struct i40e_vsi *vsi,
>>>
>>>    			new->f = add_head;
>>>    			new->state = add_head->state;
>>> +			if (add_head->state == I40E_FILTER_NEW)
>>> +				add_head->state = I40E_FILTER_NEW_SYNC;
>>>
>>>    			/* Add the new filter to the tmp list */
>>>    			hlist_add_head(&new->hlist, tmp_add_list);
>>> @@ -1550,6 +1553,8 @@ static int i40e_correct_vf_mac_vlan_filters(struct i40e_vsi *vsi,
>>>    				return -ENOMEM;
>>>    			new_mac->f = add_head;
>>>    			new_mac->state = add_head->state;
>>> +			if (add_head->state == I40E_FILTER_NEW)
>>> +				add_head->state = I40E_FILTER_NEW_SYNC;
>>>
>>>    			/* Add the new filter to the tmp list */
>>>    			hlist_add_head(&new_mac->hlist, tmp_add_list);
>>> @@ -2437,7 +2442,8 @@ static int
>>>    i40e_aqc_broadcast_filter(struct i40e_vsi *vsi, const char *vsi_name,
>>>    			  struct i40e_mac_filter *f)
>>>    {
>>> -	bool enable = f->state == I40E_FILTER_NEW;
>>> +	bool enable = f->state == I40E_FILTER_NEW ||
>>> +		      f->state == I40E_FILTER_NEW_SYNC;
>>>    	struct i40e_hw *hw = &vsi->back->hw;
>>>    	int aq_ret;
>>>
>>> @@ -2611,6 +2617,7 @@ int i40e_sync_vsi_filters(struct i40e_vsi *vsi)
>>>
>>>    				/* Add it to the hash list */
>>>    				hlist_add_head(&new->hlist, &tmp_add_list);
>>> +				f->state = I40E_FILTER_NEW_SYNC;
>>>    			}
>>>
>>>    			/* Count the number of active (current and new) VLAN
>>> @@ -2762,7 +2769,8 @@ int i40e_sync_vsi_filters(struct i40e_vsi *vsi)
>>>    		spin_lock_bh(&vsi->mac_filter_hash_lock);
>>>    		hlist_for_each_entry_safe(new, h, &tmp_add_list, hlist) {
>>>    			/* Only update the state if we're still NEW */
>>> -			if (new->f->state == I40E_FILTER_NEW)
>>> +			if (new->f->state == I40E_FILTER_NEW ||
>>> +			    new->f->state == I40E_FILTER_NEW_SYNC)
>>>    				new->f->state = new->state;
>>>    			hlist_del(&new->hlist);
>>>    			netdev_hw_addr_refcnt(new->f, vsi->netdev, -1);
Thank you again for your work and explanations.


Kind regards,

Paul
