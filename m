Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 057ABC62B60
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Nov 2025 08:26:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B461D605EC;
	Mon, 17 Nov 2025 07:26:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AiXNX8qDMlF2; Mon, 17 Nov 2025 07:26:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3913A60BCB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763364397;
	bh=pIQYinvvXteM95Z0a7sdopi1aIV1zaYqOwQhb+U4SaE=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=sq5Nblfo7HgLgehhBL6eSU2apHnjImkuU5tB6zdIPe9s/vlLuRc6VugD1+ggfmQXt
	 pIMnN798O11pU/HCXtK7ZrGmg++VAZabHNc+Fohgm9aAQLTBsgp2rtvybCGZAsUfjm
	 /16L1MxAIKmlQ1fms7fKG/UqpLRlCozueXVQlxGRaTlkJ0emnHDJmEUz+HYGrARzEa
	 sdMP9Gx7ODG7SXOahGi1voNZ3c/Ajr6xjOpxYxKYH/qG98gM6AAMLfmVNKYlz3CAdv
	 EcYj1FO5LVf8cvealdHfnATplyVuezyCP02DhfpbFBqGnyoxOPlnhxCzPJ4+1tDeI8
	 0Edb0onKdI32Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3913A60BCB;
	Mon, 17 Nov 2025 07:26:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 8A0681A9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Nov 2025 07:26:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7EDEB82085
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Nov 2025 07:26:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 735REHNktIrg for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Nov 2025 07:26:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org DE67E82083
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DE67E82083
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DE67E82083
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Nov 2025 07:26:33 +0000 (UTC)
Received: from [192.168.2.216] (p5dc55243.dip0.t-ipconnect.de [93.197.82.67])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 600AF61CC3FDE;
 Mon, 17 Nov 2025 08:25:56 +0100 (CET)
Message-ID: <09f58140-8d9c-42f3-a9f4-380c30d7c11e@molgen.mpg.de>
Date: Mon, 17 Nov 2025 08:25:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Larysa Zaremba <larysa.zaremba@intel.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Emil Tantilov <emil.s.tantilov@intel.com>,
 Madhu Chittim <madhu.chittim@intel.com>, Josh Hay <joshua.a.hay@intel.com>
References: <20251117070350.34152-1-larysa.zaremba@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20251117070350.34152-1-larysa.zaremba@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] idpf: fix aux device
 unplugging when rdma is not supported by vport
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

Dear Larysa,


Thank you for your patch.

Am 17.11.25 um 08:03 schrieb Larysa Zaremba:
> If vport flags do not contain VIRTCHNL2_VPORT_ENABLE_RDMA, driver does not
> allocate vdev_info for this vport. This leads to kernel NULL pointer
> dereference in idpf_idc_vport_dev_down(), which references vdev_info for
> every vport regardless.

Please paste part of the Oops log lines.

> Check, if vdev_info was ever allocated before unplugging aux device.

Please describe your test system.

> Fixes: be91128c579c ("idpf: implement RDMA vport auxiliary dev create, init, and destroy")
> Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> ---
>   drivers/net/ethernet/intel/idpf/idpf_idc.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_idc.c b/drivers/net/ethernet/intel/idpf/idpf_idc.c
> index c1b963f6bfad..4b1037eb2623 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_idc.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_idc.c
> @@ -322,7 +322,7 @@ static void idpf_idc_vport_dev_down(struct idpf_adapter *adapter)
>   	for (i = 0; i < adapter->num_alloc_vports; i++) {
>   		struct idpf_vport *vport = adapter->vports[i];
>   
> -		if (!vport)
> +		if (!vport || !vport->vdev_info)
>   			continue;
>   
>   		idpf_unplug_aux_dev(vport->vdev_info->adev);

The diff looks good.

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Paul
