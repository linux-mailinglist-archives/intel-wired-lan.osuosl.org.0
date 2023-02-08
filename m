Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E880268F23B
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Feb 2023 16:41:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7722561120;
	Wed,  8 Feb 2023 15:41:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7722561120
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675870884;
	bh=SQlXxI6bDSvfEEcEEhbzJYyVmGmxkmjz+nCm9vfsfEA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Gg4H+eIs6SMRlDvTH4Oz++m/NzMU0zJtuoDf7/+yQryaIJOMqYDRhjdkO6DRTnIBU
	 3fsmwBx7T/+5QzoQoU7yoSYj27QXOWNSPFyLpkzboC2nqCR9zwGxinY3awT5s0W/Tu
	 BY7iiMwLUyGYZ0d4WBlvRFk56keckGjTuhkcRkK0T7kUBKL6Bg7zgzsRD7odVOww1c
	 30SJRPooZgM1Ke2H4ZfDMcWnKKc5tQK7cCIWk+kwGrS+RKOnj8W+XGqSeTPSk7eoeM
	 AZvExY2JQAvnL7E3+SGZkMwHf9UYOfA57jj4WEcdTUhs1XOFUkvOtjk5z2lSEToQVO
	 852a2zDBNgs1w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GfxCLINz8gRg; Wed,  8 Feb 2023 15:41:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 64861610FE;
	Wed,  8 Feb 2023 15:41:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 64861610FE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BEE181BF36C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Feb 2023 15:41:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 96854610FE
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Feb 2023 15:41:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 96854610FE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gJpu49S87hZP for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Feb 2023 15:41:18 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 030D5610B6
Received: from mail-pf1-x433.google.com (mail-pf1-x433.google.com
 [IPv6:2607:f8b0:4864:20::433])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 030D5610B6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Feb 2023 15:41:17 +0000 (UTC)
Received: by mail-pf1-x433.google.com with SMTP id 144so13336741pfv.11
 for <intel-wired-lan@lists.osuosl.org>; Wed, 08 Feb 2023 07:41:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=mime-version:user-agent:content-transfer-encoding:references
 :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=Ve+9b2Qi4QH55+IMknZLZqZvNPVOjzseuDH+jH0F2bw=;
 b=hwgmbgl8o1RILW+jxnDUfEmaZBKvZqaOVyXf1YpT8xR4rT0tHXybXTHIDC4VtLexQ+
 YYOhuI1p1txsxs40tjFtQ4eT2L85UG+ZFlBe7pdXT6cENgaOaMB/b3xqmH56nOPMWn6+
 +i5ueDB3Fkg1dBZp4rql5DRqhQsHt1i1gR4SJKJQ9s6wDaPRd7Nr0momkywEOWGBcnfj
 l/AZamhQGY5Nwj9x7ij3wqLlvJ7ncV8JOim0wv74jKmObSc8V4vCixPLN8XJlufwv076
 lfLxxm5vLT3dslI0SmVvc/XBpMr10BGeOkjP/itzetuiR0QDJUhRhMXTuwIsp4XBGsPh
 pIFw==
X-Gm-Message-State: AO0yUKVg7/lCL31YBu0UbEFA9IZpSP6UpJx5g4WVHdBi0CfQjZEzjU1z
 D1MiM33ot35MTO3vmuaWyjU=
X-Google-Smtp-Source: AK7set9UTWY6Rr3Hk/2ig1fM62OTMBVuuEEnv8lQWsr64vq7cs1K+rvyb9/y3awDxGi46NxWBdhMgQ==
X-Received: by 2002:a62:4e48:0:b0:5a7:a688:cd8a with SMTP id
 c69-20020a624e48000000b005a7a688cd8amr5546379pfb.33.1675870877091; 
 Wed, 08 Feb 2023 07:41:17 -0800 (PST)
Received: from [192.168.0.128] ([98.97.119.54])
 by smtp.googlemail.com with ESMTPSA id
 187-20020a6217c4000000b005825b8e0540sm11359357pfx.204.2023.02.08.07.41.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Feb 2023 07:41:16 -0800 (PST)
Message-ID: <c33e26364b18039e3632218d8e2a76f3b6a08577.camel@gmail.com>
From: Alexander H Duyck <alexander.duyck@gmail.com>
To: Jason Xing <kerneljasonxing@gmail.com>, jesse.brandeburg@intel.com, 
 anthony.l.nguyen@intel.com, davem@davemloft.net, edumazet@google.com, 
 kuba@kernel.org, pabeni@redhat.com, richardcochran@gmail.com,
 ast@kernel.org,  daniel@iogearbox.net, hawk@kernel.org,
 john.fastabend@gmail.com,  alexandr.lobakin@intel.com,
 maciej.fijalkowski@intel.com
Date: Wed, 08 Feb 2023 07:41:14 -0800
In-Reply-To: <20230208024333.10465-2-kerneljasonxing@gmail.com>
References: <20230208024333.10465-1-kerneljasonxing@gmail.com>
 <20230208024333.10465-2-kerneljasonxing@gmail.com>
User-Agent: Evolution 3.44.4 (3.44.4-2.fc36) 
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=mime-version:user-agent:content-transfer-encoding:references
 :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
 :date:message-id:reply-to;
 bh=Ve+9b2Qi4QH55+IMknZLZqZvNPVOjzseuDH+jH0F2bw=;
 b=nFZZf8nrA50gOQ72uyOrle9KCurosMmlUpiG0iNBwvVzo0CJNEqBsFR9mwYqo+vT5q
 13SDT6AEY9ijHCTLwswiCL9N8iwESh/qNheiBTyDj9OTabF/UL5+kuoU2l9Obgg+Sbfk
 dYoqKqou8dNgiEIlwQ8TrzQtZ2DJjPvotNTxyd/SfYwh/Xx9gEut7Gpc7jJ6KpEfNV68
 zdtULC+NovJxCq8N287T9+kkTlZPElZcfsH9IRjMNBlDdn4+m1sHY35q4pSuxvQZO00m
 T9lAlEpDRU9g7DpqpeEq0kKfNhI3kKW0qE/xFVa435Rxho/6JHg2/vUhs2bq91jecRdS
 JamA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=nFZZf8nr
Subject: Re: [Intel-wired-lan] [PATCH net v2 2/3] i40e: add double of VLAN
 header when computing the max MTU
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
Cc: netdev@vger.kernel.org, bpf@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 Jason Xing <kernelxing@tencent.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 2023-02-08 at 10:43 +0800, Jason Xing wrote:
> From: Jason Xing <kernelxing@tencent.com>
> 
> Include the second VLAN HLEN into account when computing the maximum
> MTU size as other drivers do.
> 
> Fixes: 0c8493d90b6b ("i40e: add XDP support for pass and drop actions")
> Signed-off-by: Jason Xing <kernelxing@tencent.com>
> ---
> v2: drop the duplicate definition
> ---
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index 53d0083e35da..d039928f3646 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -2921,7 +2921,7 @@ static int i40e_change_mtu(struct net_device *netdev, int new_mtu)
>  	struct i40e_pf *pf = vsi->back;
>  
>  	if (i40e_enabled_xdp_vsi(vsi)) {
> -		int frame_size = new_mtu + ETH_HLEN + ETH_FCS_LEN + VLAN_HLEN;
> +		int frame_size = new_mtu + I40E_PACKET_HDR_PAD;
>  
>  		if (frame_size > i40e_max_xdp_frame_size(vsi))
>  			return -EINVAL;

Looks good to me.

Reviewed-by: Alexander Duyck <alexanderduyck@fb.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
