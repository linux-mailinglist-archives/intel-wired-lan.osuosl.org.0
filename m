Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CF8FD996D09
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Oct 2024 16:01:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5A63640761;
	Wed,  9 Oct 2024 14:01:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RTo-vQp5PoC3; Wed,  9 Oct 2024 14:01:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 460C040764
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728482501;
	bh=e68bG0Kn9BbTQqpSk2F2T9TZANf37aHg+wPsgf0uW7Y=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=rHmrdqzaD39K1W7YVLkJvNYC3p32ylnIy0MjEtJjtJl6GmBvtIRWifrqPXEwgBoLg
	 6+goxFsVNiwJJ3cL69WSAnsIKBd3ruzTYRv/c7d0iQW5PlLBm2kFNl9NsHXRtc8shr
	 zLMvQh6CdF9AJYW/J/yQQXksRbZhVGzAMlR3xQSQY0VFSG4Ee1Yt/oD+hl93oJM54U
	 B3wSsvOpSvDWIX1YkK1oykzYlChIGpSONaJhv+mhnGTuwtsDOiDc0Emx4WAA10Z2Wr
	 GmfGgvd7yH8sygCacALMYJnD1e9xJT6eLtMME+Y4hSniBHMLpaGDV2hcUeb9Y5Y7/t
	 kTVv3nqptjIcA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 460C040764;
	Wed,  9 Oct 2024 14:01:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 21EDD1BF215
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2024 14:01:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1D1A3608BB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2024 14:01:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rKigXWwCWO5q for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Oct 2024 14:01:38 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=marcin.szycik@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 378BE60627
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 378BE60627
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 378BE60627
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2024 14:01:38 +0000 (UTC)
X-CSE-ConnectionGUID: BJo9YEQyRBCMFSCQIP60QQ==
X-CSE-MsgGUID: BYxA+qofShezVdkigFO0pA==
X-IronPort-AV: E=McAfee;i="6700,10204,11220"; a="31678206"
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="31678206"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 07:01:38 -0700
X-CSE-ConnectionGUID: OUkyTY60Tp+7rz+utcNmuQ==
X-CSE-MsgGUID: uEZbFkRFSy6pIODMto7p/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="81281274"
Received: from mszycik-mobl1.ger.corp.intel.com (HELO [10.245.120.122])
 ([10.245.120.122])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 07:01:36 -0700
Message-ID: <4bd4eca1-91d7-4ffb-92d9-ad708d83248c@linux.intel.com>
Date: Wed, 9 Oct 2024 16:01:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Paul Menzel <pmenzel@molgen.mpg.de>
References: <20241009124912.9774-2-marcin.szycik@linux.intel.com>
 <3a5591f9-a8fe-4557-b6c4-ea393dd28913@molgen.mpg.de>
Content-Language: en-US
From: Marcin Szycik <marcin.szycik@linux.intel.com>
In-Reply-To: <3a5591f9-a8fe-4557-b6c4-ea393dd28913@molgen.mpg.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728482498; x=1760018498;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=xuA9fUHFtoQblXYKldwTdTtapCWeMBROK2X3/1kWnbE=;
 b=CZPrXMov16YvebH/DknVyR/cOFu6rQPDR4kbJMdaDzQsVqbTIUPygFJP
 hV/amEwsMTgtqiA25rA//nqTobxpyF3Pj79T4JKWUadF5tBdxlIIZPZrK
 AgKdG1K9lGCwJaatwA45vaDrGRj15MDgeIBtZpdhirv3ImV/M/VR1Amvg
 D47fz11XqZuwbj+IDFgHNXL7H2oqqJ2dMHeN9zb95VuZsgqzhg+++Ysr6
 ci0Ogo40Age1vm5pw2W7TXCw/OjNu+lO6QFG9sAxx311GMaLJahneOUc/
 075w8xb/1xKLAyHe2dtBiBlhFCbpcp47qBsaDjW37R5kWSlInQjRHDeSA
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=CZPrXMov
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: Fix use after free
 during unload with ports in bridge
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 09.10.2024 15:12, Paul Menzel wrote:
> Dear Marcin,
> 
> 
> Thank you for the patch, and the reproducer and detailed commit message.
> 
> Am 09.10.24 um 14:49 schrieb Marcin Szycik:
>> Unloading the ice driver while switchdev port representors are added to
>> a bridge can lead to kernel panic. Reproducer:
>>
>>    modprobe ice
>>
>>    devlink dev eswitch set $PF1_PCI mode switchdev
>>
>>    ip link add $BR type bridge
>>    ip link set $BR up
>>
>>    echo 2 > /sys/class/net/$PF1/device/sriov_numvfs
>>    sleep 2
>>
>>    ip link set $PF1 master $BR
>>    ip link set $VF1_PR master $BR
>>    ip link set $VF2_PR master $BR
>>    ip link set $PF1 up
>>    ip link set $VF1_PR up
>>    ip link set $VF2_PR up
>>    ip link set $VF1 up
>>
>>    rmmod irdma ice
> 
> For people hitting the issue, an excerpt from the panic would also be nice, so it can be found more easily.

Will add in v2, thanks.
Marcin

>> When unloading the driver, ice_eswitch_detach() is eventually called as
>> part of VF freeing. First, it removes a port representor from xarray,
>> then unregister_netdev() is called (via repr->ops.rem()), finally
>> representor is deallocated. The problem comes from the bridge doing its
>> own deinit at the same time. unregister_netdev() triggers a notifier
>> chain, resulting in ice_eswitch_br_port_deinit() being called. It should
>> set repr->br_port = NULL, but this does not happen since repr has
>> already been removed from xarray and is not found. Regardless, it
>> finishes up deallocating br_port. At this point, repr is still not freed
>> and an fdb event can happen, in which ice_eswitch_br_fdb_event_work()
>> takes repr->br_port and tries to use it, which causes a panic (use after
>> free).
>>
>> Note that this only happens with 2 or more port representors added to
>> the bridge, since with only one representor port, the bridge deinit is
>> slightly different (ice_eswitch_br_port_deinit() is called via
>> ice_eswitch_br_ports_flush(), not ice_eswitch_br_port_unlink()).
>>
>> A workaround is available: brctl setageing $BR 0, which stops the bridge
>> from adding fdb entries altogether.
>>
>> Change the order of operations in ice_eswitch_detach(): move the call to
>> unregister_netdev() before removing repr from xarray. This way
>> repr->br_port will be correctly set to NULL in
>> ice_eswitch_br_port_deinit(), preventing a panic.
>>
>> Fixes: fff292b47ac1 ("ice: add VF representors one by one")
>> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
>> ---
>>   drivers/net/ethernet/intel/ice/ice_eswitch.c | 3 ++-
>>   1 file changed, 2 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.c b/drivers/net/ethernet/intel/ice/ice_eswitch.c
>> index c0b3e70a7ea3..fb527434b58b 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_eswitch.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_eswitch.c
>> @@ -552,13 +552,14 @@ int ice_eswitch_attach_sf(struct ice_pf *pf, struct ice_dynamic_port *sf)
>>   static void ice_eswitch_detach(struct ice_pf *pf, struct ice_repr *repr)
>>   {
>>       ice_eswitch_stop_reprs(pf);
>> +    repr->ops.rem(repr);
>> +
>>       xa_erase(&pf->eswitch.reprs, repr->id);
>>         if (xa_empty(&pf->eswitch.reprs))
>>           ice_eswitch_disable_switchdev(pf);
>>         ice_eswitch_release_repr(pf, repr);
>> -    repr->ops.rem(repr);
>>       ice_repr_destroy(repr);
>>         if (xa_empty(&pf->eswitch.reprs)) {
> 
> Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
> 
> 
> Kind regards,
> 
> Paul

