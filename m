Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 180494E5848
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Mar 2022 19:20:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9D9B8402F4;
	Wed, 23 Mar 2022 18:20:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id R0FGDqmBPnjh; Wed, 23 Mar 2022 18:20:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 412EB40195;
	Wed, 23 Mar 2022 18:20:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7759E1BF4D5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Mar 2022 18:20:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7214F6120E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Mar 2022 18:20:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id v5ztM0din49X for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Mar 2022 18:20:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C2A15611C8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Mar 2022 18:20:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648059601; x=1679595601;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=zKC6DF3oHwhlqlVr0NFUdSwE6lappAD/Mes4aBhNhNo=;
 b=RIvw6YfBNVxCtMATfiik7IHhAvpCnyVe7eFb8o3iJDpdmdR0wIMGoQVn
 VRsoUCmkfWFj1tQsBuUoCwf9nB4bqixBSDGpWQuVm42nBvjC5dJIMOfkU
 Iw5VCl6l2ozkQt4vFcADRBKrPyE3UdR6wIpusqz6s3r+bBDvH+vhLPoqx
 Mqz+OrW8tgmirXvsBrsSc/gkza6sqiiqY7yb40PWvTHPpylsvrnUHqm8R
 7yMBggwc6zjfnCx9eR7IV9JS1P34toWzrxfLT3VkgA0v9OmdZWJZSgZbc
 dBqvBsXJSq/2Opk68b9eOsWOI0PtTPxLSJg1RcTA7OzIeUortKT9c0pdJ g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10295"; a="257020419"
X-IronPort-AV: E=Sophos;i="5.90,204,1643702400"; d="scan'208";a="257020419"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2022 11:20:01 -0700
X-IronPort-AV: E=Sophos;i="5.90,204,1643702400"; d="scan'208";a="561031165"
Received: from mszycik-mobl.ger.corp.intel.com (HELO [10.249.137.148])
 ([10.249.137.148])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2022 11:19:57 -0700
Message-ID: <287f2247-2c58-497d-f7b1-ae1e24a88da8@linux.intel.com>
Date: Wed, 23 Mar 2022 19:19:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Ivan Vecera <ivecera@redhat.com>
References: <20220322142554.3253428-1-ivecera@redhat.com>
 <45b155ff-8e26-fa96-f89e-6a561de01abb@linux.intel.com>
 <20220323185426.33c66892@ceranb>
From: Marcin Szycik <marcin.szycik@linux.intel.com>
In-Reply-To: <20220323185426.33c66892@ceranb>
Subject: Re: [Intel-wired-lan] [PATCH net] ice: Clear default forwarding VSI
 during VSI release
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
Cc: netdev@vger.kernel.org, mschmidt@redhat.com,
 Brett Creeley <brett.creeley@intel.com>,
 open list <linux-kernel@vger.kernel.org>, poros@redhat.com,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 "moderated list:INTEL ETHERNET DRIVERS\"" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 23-Mar-22 18:54, Ivan Vecera wrote:
> On Wed, 23 Mar 2022 18:39:11 +0100
> Marcin Szycik <marcin.szycik@linux.intel.com> wrote:
> 
>> On 22-Mar-22 15:25, Ivan Vecera wrote:
>>> VSI is set as default forwarding one when promisc mode is set for
>>> PF interface, when PF is switched to switchdev mode or when VF
>>> driver asks to enable allmulticast or promisc mode for the VF
>>> interface (when vf-true-promisc-support priv flag is off).
>>> The third case is buggy because in that case VSI associated with
>>> VF remains as default one after VF removal.
>>>
>>> Reproducer:
>>> 1. Create VF
>>>    echo 1 > sys/class/net/ens7f0/device/sriov_numvfs
>>> 2. Enable allmulticast or promisc mode on VF
>>>    ip link set ens7f0v0 allmulticast on
>>>    ip link set ens7f0v0 promisc on
>>> 3. Delete VF
>>>    echo 0 > sys/class/net/ens7f0/device/sriov_numvfs
>>> 4. Try to enable promisc mode on PF
>>>    ip link set ens7f0 promisc on
>>>
>>> Although it looks that promisc mode on PF is enabled the opposite
>>> is true because ice_vsi_sync_fltr() responsible for IFF_PROMISC
>>> handling first checks if any other VSI is set as default forwarding
>>> one and if so the function does not do anything. At this point
>>> it is not possible to enable promisc mode on PF without re-probe
>>> device.
>>>
>>> To resolve the issue this patch clear default forwarding VSI
>>> during ice_vsi_release() when the VSI to be released is the default
>>> one.
>>>
>>> Fixes: 01b5e89aab49 ("ice: Add VF promiscuous support")
>>> Signed-off-by: Ivan Vecera <ivecera@redhat.com>
>>> ---
>>>  drivers/net/ethernet/intel/ice/ice_lib.c | 2 ++
>>>  1 file changed, 2 insertions(+)
>>>
>>> diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
>>> index 53256aca27c7..20d755822d43 100644
>>> --- a/drivers/net/ethernet/intel/ice/ice_lib.c
>>> +++ b/drivers/net/ethernet/intel/ice/ice_lib.c
>>> @@ -3147,6 +3147,8 @@ int ice_vsi_release(struct ice_vsi *vsi)
>>>  		}
>>>  	}
>>>  
>>> +	if (ice_is_vsi_dflt_vsi(pf->first_sw, vsi))
>>> +		ice_clear_dflt_vsi(pf->first_sw);  
>>
>> It would probably be good to check `ice_clear_dflt_vsi` return code.
> 
> Check and report potential warning when error occurs? because we are in ice_vsi_release() so
> any rollback does not make sense.

Right. ice_clear_dflt_vsi already reports errors so it should be good as is.
LGTM, thanks!

> 
> Ivan
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
