Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C3FA86EF77
	for <lists+intel-wired-lan@lfdr.de>; Sat,  2 Mar 2024 09:19:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id AC5ED41BC1;
	Sat,  2 Mar 2024 08:19:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SOzG_W4sJJm0; Sat,  2 Mar 2024 08:19:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 92D6F4095E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709367592;
	bh=Us5iaY3zrecGucIuG0sAon7Ztbk6qEAMXzpMkcxhXY4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=51+qmUMwUJDpUJ5bSE+H56pIE28BSsTeOlhWnVpKnii4f1y8Q2khh+g4f5KvAuCLZ
	 l99nHnYfOt2TCsHBswOlSs4TFaNCkSXq1+yx2MMN+7IvxF0pKgMv9glV0bJ3ok53TJ
	 N7aoO8eD7s6WWCTnbX+4xm10wx2PlJnSZzWv1VI1wBsAAkvHS+PJZ1OmjcZVacpFnp
	 OIe8zW4sAiew+5gAJHaXgnPkiKl4elscuxhYRaxDf7Iz2HfNezV1ngsK1fhyjVrlZu
	 FIVYebZlL+fA2yD1FKjyZ1fW4qLmihMG3WGHjRwc/A/No16Q3ZkAfSJMzQESHJD9hr
	 LwONJ+4G90nvA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 92D6F4095E;
	Sat,  2 Mar 2024 08:19:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7DB441BF28F
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Mar 2024 08:19:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6A52C40812
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Mar 2024 08:19:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lwpuHC-sPDQb for <intel-wired-lan@lists.osuosl.org>;
 Sat,  2 Mar 2024 08:19:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org EFA0D4080F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EFA0D4080F
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EFA0D4080F
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Mar 2024 08:19:47 +0000 (UTC)
Received: from [192.168.0.224] (ip5f5aeb37.dynamic.kabel-deutschland.de
 [95.90.235.55])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id BAD2661E5FE05;
 Sat,  2 Mar 2024 09:19:06 +0100 (CET)
Message-ID: <51b6c48b-a33e-46cd-9b00-5568ccc529ca@molgen.mpg.de>
Date: Sat, 2 Mar 2024 09:19:05 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Yifei Liu <yifei.l.liu@oracle.com>
References: <20240301235837.3741422-1-yifei.l.liu@oracle.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20240301235837.3741422-1-yifei.l.liu@oracle.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH Linux-6.8-rc5 1/1] ixgbevf: start
 negotiate with api version 1.4
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
Cc: lihong.yang@intel.com, jack.vogel@oracle.com,
 intel-wired-lan@lists.osuosl.org, jesse.brandeburg@intel.com,
 linux-kernel@vger.kernel.org, edumazet@google.com, anthony.l.nguyen@intel.com,
 harshit.m.mogalapalli@oracle.com, netdev@vger.kernel.org, kuba@kernel.org,
 pabeni@redhat.com, ramanan.govindarajan@oracle.com, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Yifei,


Thank you very much for your patch.

Am 02.03.24 um 00:58 schrieb Yifei Liu:
> ixgbevf updates to api version to 1.5 via
> 	commit 339f28964147d ("ixgbevf: Add support for new mailbox
> 	communication between PF and VF")
> while the pf side is not updated to 1.5 properly. It will lead to a
> failure of negotiation of api version 1.5 This commit will enforce
> the negotiation to start with 1.4 which is working fine.
> 
> Normally the pf and vf side should be updated together. Example:
> 	commit adef9a26d6c39 ("ixgbevf: add defines for IPsec offload request")
> 	commit 7269824046376 ("ixgbe: add VF IPsec offload request message handling")

Why can’t the PF side not be updated to version 1.5 too?

If you don’t mind, I’d format the commit message like below.

Commit 339f28964147d ("ixgbevf: Add support for new mailbox communication
between PF and VF") updates the driver ixgbevf to API version 1.5 while the
pf side is not updated to 1.5 properly. This leads to a negotiation failure
of api version 1.5. So, enforce the negotiation to start with 1.4 which is
working fine.

Normally the pf and vf side should be updated together. Example:

1.  commit adef9a26d6c39 ("ixgbevf: add defines for IPsec offload request")
2.  commit 7269824046376 ("ixgbe: add VF IPsec offload request message 
handling")

> Reported-by: Manjunatha Gowda <manjunatha.gowda@oracle.com>
> Signed-off-by: Yifei Liu <yifei.l.liu@oracle.com>
> Reviewed-by: Jack Vogel <jack.vogel@oracle.com>

Please add a Fixes: tag.

Fixes: 39f28964147d ("ixgbevf: Add support for new mailbox communication 
between PF and VF")

Unfortunately, I am unable to find this commit hash. What archive/tree 
is it from?

> ---
>   drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c | 6 ++++++
>   1 file changed, 6 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c b/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
> index a44e4bd56142..a1b9b789d1d4 100644
> --- a/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
> +++ b/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
> @@ -2286,6 +2286,12 @@ static void ixgbevf_negotiate_api(struct ixgbevf_adapter *adapter)
>   
>   	spin_lock_bh(&adapter->mbx_lock);
>   
> +	/* There is no corresponding drivers in pf for
> +	 * api version 1.5. Try to negociate with version

negotiate

> +	 * 1.5 will always fail. Start to negociate with
> +	 * version 1.4.

Could you please use the fully allowed line length, so less lines are used?

> +	 */
> +	idx = 1; >   	while (api[idx] != ixgbe_mbox_api_unknown) {
>   		err = hw->mac.ops.negotiate_api_version(hw, api[idx]);
>   		if (!err)

Where is `idx` set before?

Unrelated to the problem at hand, but enums or macros should be used for 
the API version.


Kind regards,

Paul
