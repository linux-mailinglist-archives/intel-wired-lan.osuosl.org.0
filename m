Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gIifG1GPGGq4lAgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 May 2026 20:54:09 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D2AEC5F6C29
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 May 2026 20:54:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4A36340939;
	Thu, 28 May 2026 18:54:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZbkLVDLNcX_p; Thu, 28 May 2026 18:54:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B53C340937
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1779994446;
	bh=sREcGobRJlL/jCIYnZKmxSLOCUxI4fpeHElPx2Fu/uQ=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=l9wTI3jAsBt17cDy7iF7fn417gGbLuXI8St5DPGiLXIlPOrdy+FaNA8tPgtIgqMyN
	 5polPmwBpxwof673/YTQZtPnGa1StMc65yE/sA/5RN/KgNT0GPqeXkA3z9Qm7Nb1FE
	 aSGI2A4+1Ita6jdAvHZ4wvaZoBHAX7ZZuY+8+3fwrA3Ps/wvaucJYkgdvLFy31iFmx
	 1RQteXAAbCX0O5qlrn2YxWgspLeyd1W7cvCUp0/JGMGT6sFNS4u79SS5aLrA7xEPpv
	 +ZFfxDC495sqyIyCZGfW3+fPNZODo3fapDqh74MC+rOTTV6xie/mVM42HJd+rKIbzt
	 3Vp+ChNtDknlw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B53C340937;
	Thu, 28 May 2026 18:54:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id C992ED3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2026 18:03:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B8529605F9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2026 18:03:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id peJJoQv7IwhB for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 May 2026 18:03:58 +0000 (UTC)
X-Greylist: delayed 341 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 28 May 2026 18:03:58 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org AFF7A605F0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AFF7A605F0
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=51.81.229.181;
 helo=mta-201a.earthlink-vadesecure.net; envelope-from=sln@onemain.com;
 receiver=<UNKNOWN> 
Received: from mta-201a.earthlink-vadesecure.net
 (mta-201b.earthlink-vadesecure.net [51.81.229.181])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AFF7A605F0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2026 18:03:58 +0000 (UTC)
Received: from [192.168.0.23] ([50.47.159.51])
 by vsel2nmtao01p.internal.vadesecure.com with ngmta
 id 9e62da41-18b3cc741b01b10d; Thu, 28 May 2026 17:58:12 +0000
Message-ID: <eb74ae1c-3027-42f5-ad5b-a6f2c2cd6a98@onemain.com>
Date: Thu, 28 May 2026 10:57:55 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 Dawei Feng <dawei.feng@seu.edu.cn>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
Cc: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>,
 "kuba@kernel.org" <kuba@kernel.org>, "pabeni@redhat.com"
 <pabeni@redhat.com>, "jesse.brandeburg@intel.com"
 <jesse.brandeburg@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "jianhao.xu@seu.edu.cn" <jianhao.xu@seu.edu.cn>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>,
 Zilin Guan <zilin@seu.edu.cn>
References: <20260527110205.1780595-1-dawei.feng@seu.edu.cn>
 <IA3PR11MB89860869ABD5A159C01A5634E5092@IA3PR11MB8986.namprd11.prod.outlook.com>
Content-Language: en-US
From: Shannon Nelson <sln@onemain.com>
In-Reply-To: <IA3PR11MB89860869ABD5A159C01A5634E5092@IA3PR11MB8986.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Thu, 28 May 2026 18:54:06 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256;
 bh=sREcGobRJlL/jCIYnZKmxSLOCUxI4fpeHElPx2
 Fu/uQ=; c=relaxed/relaxed; d=earthlink.net; h=from:reply-to:subject:
 date:to:cc:resent-date:resent-from:resent-to:resent-cc:in-reply-to:
 references:list-id:list-help:list-unsubscribe:list-unsubscribe-post:
 list-subscribe:list-post:list-owner:list-archive; q=dns/txt;
 s=dk12062016; t=1779991092; x=1780595892; b=euPQv9lFHk+cOGJEqHBymjov7JB
 cVkRNwebRQpcGZ+vGKYwAyO6P8jFuHSFgNaw6MezmNYutYOfLNm0J2adoJhdBgPIKZbw2Oi
 NWm1ClrX4D48eIME2Y2DL1mDLBYQ/bXxnwP8LxK7TsTFXp8hJCquJHw0O0yRnFVFvk7AMeJ
 IW2uSitBmWNObZsEv89XbcaVZtFSoVIyaGR9uTjKl47vAdsgdPDCX/w89TEN+deK9AK/+ki
 EUMsrLThVPhaAykHmOUnApQEXPXWIrdvGeh+KgXjtzNQuModTFwIAK7gCoR4FrXamyZJ6vs
 qUxDBNza4flnywo9NiWV4heooOJs3Pw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=onemain.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=earthlink.net header.i=@earthlink.net
 header.a=rsa-sha256 header.s=dk12062016 header.b=euPQv9lF
Subject: Re: [Intel-wired-lan] [PATCH net] i40e: fix netdev leak in
 i40e_vsi_setup() error paths
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Spamd-Result: default: False [0.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[onemain.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:dawei.feng@seu.edu.cn,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:jesse.brandeburg@intel.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:jianhao.xu@seu.edu.cn,m:stable@vger.kernel.org,m:zilin@seu.edu.cn,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[sln@onemain.com,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[16];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[sln@onemain.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: D2AEC5F6C29
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 5/28/26 01:49, Loktionov, Aleksandr wrote:
>
>> -----Original Message-----
>> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
>> Of Dawei Feng
>> Sent: Wednesday, May 27, 2026 1:02 PM
>> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>
>> Cc: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>;
>> andrew+netdev@lunn.ch; davem@davemloft.net; edumazet@google.com;
>> kuba@kernel.org; pabeni@redhat.com; jesse.brandeburg@intel.com;
>> sln@onemain.com; intel-wired-lan@lists.osuosl.org;
>> netdev@vger.kernel.org; linux-kernel@vger.kernel.org;
>> jianhao.xu@seu.edu.cn; Dawei Feng <dawei.feng@seu.edu.cn>;
>> stable@vger.kernel.org; Zilin Guan <zilin@seu.edu.cn>
>> Subject: [Intel-wired-lan] [PATCH net] i40e: fix netdev leak in
>> i40e_vsi_setup() error paths
>>
>> i40e_config_netdev() allocates vsi->netdev for main and VMDQ VSIs. If
>> i40e_netif_set_realnum_tx_rx_queues(), i40e_devlink_create_port(), or
>> register_netdev() fails, i40e_vsi_setup() goes to err_netdev without
>> releasing the netdev. The existing cleanup only frees the netdev after
>> a successful register_netdev(), so these error paths leak the
>> allocation.
>>
>> Reorder the error paths at err_netdev to ensure proper cleanup of the
>> allocated device.
>>
>> The bug was first flagged by an experimental analysis tool we are
>> developing for kernel memory-management bugs while analyzing v6.13-
>> rc1. The tool is still under development and is not yet publicly
>> available. Manual inspection confirms that the bug is still present in
>> v7.1-rc5.
>>
>> An x86_64 allyesconfig build showed no new warnings. As we do not have
>> an Intel Ethernet Controller XL710 family adapter to test with, no
>> runtime testing was able to be performed.
>>
>> Fixes: 41c445ff0f48 ("i40e: main driver core")
>> Cc: stable@vger.kernel.org
>>
>> Signed-off-by: Zilin Guan <zilin@seu.edu.cn>
>> Signed-off-by: Dawei Feng <dawei.feng@seu.edu.cn>
>> ---
>>   drivers/net/ethernet/intel/i40e/i40e_main.c | 6 ++++--
>>   1 file changed, 4 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c
>> b/drivers/net/ethernet/intel/i40e/i40e_main.c
>> index 6d4f9218dc68..1ced01b0cc09 100644
>> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
>> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
>> @@ -14491,13 +14491,15 @@ struct i40e_vsi *i40e_vsi_setup(struct
>> i40e_pf *pf, u8 type,
>>   	if (vsi->netdev_registered) {
>>   		vsi->netdev_registered = false;
>>   		unregister_netdev(vsi->netdev);
>> -		free_netdev(vsi->netdev);
>> -		vsi->netdev = NULL;
>>   	}
>>   err_dl_port:
>>   	if (vsi->type == I40E_VSI_MAIN)
>>   		i40e_devlink_destroy_port(pf);
>>   err_netdev:
>> +	if (vsi->netdev) {
>> +		free_netdev(vsi->netdev);
>> +		vsi->netdev = NULL;
>> +	}
>>   	i40e_aq_delete_element(&pf->hw, vsi->seid, NULL);

Would it make sense to put these 4 lines into i40e_vsi_clear()? Then you 
can also clean up i40e_vsi_release() and i40e_vsi_reinit_setup() in a 
similar way.

sln

>>   err_vsi:
>>   	i40e_vsi_clear(vsi);
>> --
>> 2.34.1
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>

