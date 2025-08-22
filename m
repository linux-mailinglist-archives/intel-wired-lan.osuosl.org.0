Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B1434B30EF7
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 Aug 2025 08:32:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 72A74608DA;
	Fri, 22 Aug 2025 06:32:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5pCpiaARjm5q; Fri, 22 Aug 2025 06:32:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E5DD4608D6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755844340;
	bh=7lWcEyTByhJsDL5+94QALhg6nK3E+1aIxABC1mqqEqU=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=X8oJwNzdfdUPcF8MfJbQX5gejm0OEzmFvzXPwdLRLrVfMALJLnxc0C3ViLGIAUKwe
	 8bOuQnNV4Yl3DIlfKdsCUW4pFiLA2AnkF+TiqhZLOrUoaxD0I0xdVVCJHGZKCEOKxr
	 vMSCwc/jsGUV0NhmqTsXae+jHAqJptGSgGTTrEYfSZ/kobZNFToQEX1dJ3BiqLCXwd
	 ZvlaVpSl6fUBfRzM2VRSQ+0v8Foyagh+sNlSENKWGfbaJT47MjzXJXOX3Qsq/jVQYe
	 RyWr3E7q+D8yblqzNKvI41ly1xmPw+3dORGsXbKeJIdUyIp/eZd96depJSu9NXmNHZ
	 ccgw7nBDpL48w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id E5DD4608D6;
	Fri, 22 Aug 2025 06:32:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 74C5CD8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Aug 2025 06:32:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5AEC940910
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Aug 2025 06:32:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DE1_So9E4wZJ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 22 Aug 2025 06:32:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 962C040473
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 962C040473
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 962C040473
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Aug 2025 06:32:16 +0000 (UTC)
Received: from [192.168.0.192] (ip5f5af7b3.dynamic.kabel-deutschland.de
 [95.90.247.179])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 3298161E64841;
 Fri, 22 Aug 2025 08:31:53 +0200 (CEST)
Message-ID: <0f19e779-ec78-419a-a261-c4550d778b45@molgen.mpg.de>
Date: Fri, 22 Aug 2025 08:31:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Calvin Owens <calvin@wbinvd.org>
Cc: netdev@vger.kernel.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Ivan Vecera <ivecera@redhat.com>, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org
References: <94d7d5c0bb4fc171154ccff36e85261a9f186923.1755661118.git.calvin@wbinvd.org>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <94d7d5c0bb4fc171154ccff36e85261a9f186923.1755661118.git.calvin@wbinvd.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH net] i40e: Prevent unwanted interface
 name changes
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

Dear Calvin,


Thank you for your patch..

Am 20.08.25 um 06:29 schrieb Calvin Owens:
> The same naming regression which was reported in ixgbe and fixed in
> commit e67a0bc3ed4f ("ixgbe: prevent from unwanted interface name
> changes") still exists in i40e.
> 
> Fix i40e by setting the same flag, added in commit c5ec7f49b480
> ("devlink: let driver opt out of automatic phys_port_name generation").
> 
> Fixes: 9e479d64dc58 ("i40e: Add initial devlink support")
> Signed-off-by: Calvin Owens <calvin@wbinvd.org>
> ---
>   drivers/net/ethernet/intel/i40e/i40e_devlink.c | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_devlink.c b/drivers/net/ethernet/intel/i40e/i40e_devlink.c
> index cc4e9e2addb7..40f81e798151 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_devlink.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_devlink.c
> @@ -212,6 +212,7 @@ int i40e_devlink_create_port(struct i40e_pf *pf)
>   
>   	attrs.flavour = DEVLINK_PORT_FLAVOUR_PHYSICAL;
>   	attrs.phys.port_number = pf->hw.pf_id;
> +	attrs.no_phys_port_name = 1;
>   	i40e_devlink_set_switch_id(pf, &attrs.switch_id);
>   	devlink_port_attrs_set(&pf->devlink_port, &attrs);
>   	err = devlink_port_register(devlink, &pf->devlink_port, pf->hw.pf_id);

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Paul
