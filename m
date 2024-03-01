Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 364D686E71D
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Mar 2024 18:24:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8B4CC61AB4;
	Fri,  1 Mar 2024 17:24:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wuUilJUmz_CM; Fri,  1 Mar 2024 17:24:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C9C1461ABC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709313843;
	bh=RyyU1KTZ+u7IZU/ZLxa5MUX+oMEqsxDrKnYwc61Y+0Q=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=uisVvaMij6niXAldxoss6h0o+UQnVgroUQ+5PIWGF7x5vw4rY8qEVMd/ZDpWxzGzk
	 M4EXrlPW1bfPATzb/yZaMYWKR8RMGRR6ptBL1eQjFs69gAWlpKe3rMJ8boLzZ20HYU
	 MCxPJnDDHWqjb7rfNiprkG2xuNuH71FLKcNjhsaXwCOFQgPla1EfDc70K8aa/F2+xx
	 gGyX2uI4n15cro/jVHcUV5DJAngVlSwqsHkXhFOf2QicPDtkskzRPfp+/m9fyi52i8
	 m3cJ2kill0hsahaVO1PlfArgnUqqd7FlsoS7mlj0Dfw2aR3EmvN3BVznaK4dt6L8zC
	 4RYm9IcAGiC9A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C9C1461ABC;
	Fri,  1 Mar 2024 17:24:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E21791BF2F7
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Mar 2024 17:24:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CDF06837A1
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Mar 2024 17:24:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id C0x00924lLco for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Mar 2024 17:24:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::536; helo=mail-pg1-x536.google.com;
 envelope-from=john.fastabend@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1D0C483709
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1D0C483709
Received: from mail-pg1-x536.google.com (mail-pg1-x536.google.com
 [IPv6:2607:f8b0:4864:20::536])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1D0C483709
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Mar 2024 17:23:59 +0000 (UTC)
Received: by mail-pg1-x536.google.com with SMTP id
 41be03b00d2f7-5d8b887bb0cso2017647a12.2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 01 Mar 2024 09:23:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1709313839; x=1709918639;
 h=content-transfer-encoding:mime-version:subject:references
 :in-reply-to:message-id:cc:to:from:date:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=RyyU1KTZ+u7IZU/ZLxa5MUX+oMEqsxDrKnYwc61Y+0Q=;
 b=Lg7HW72nFdvmAwSHErczEWARTua27lpVflI7T9f+Gdco4q5tuU7Ca12DMGwo+F9eoC
 v4kWR2VDSw/+MiDZD3MtjKrutmR9JSFKmQJho41N/479FuX6tXgZnWxlcifo38KSdSE+
 YmkQl2LpbGs9ynkopckxcJhGcwdObeLj4fk5NtUoMQJt5rG2RRN3H8WVMRNBJcdQ4t9z
 joZyWCKM6Mp/qtN+YWcMYl9yrXSu4nKNl/dIAOPht+v2Uh3FpE/MRhgG5nLkTi1NojQg
 ftqiAUJP/6qi1HZaWAVtx73WJheJ0fVYtM2GBlClj1bMA16FDAs58i6RUP4Q3RRFrirm
 SYWQ==
X-Gm-Message-State: AOJu0YwMyfEaZ7Dqh0rpgEVmp+BmLfiZlwPd5+5IRpdMR++m6fq4Kc9m
 p6n1elkjeylmjq1idF94vSrBl4EfABnO/AvjYCqdWDk7FxzoURME
X-Google-Smtp-Source: AGHT+IERqxQxkRkE14VITG6EjQITNnYMzffw4XzcbvyQqW4Wc7ZerAs9c1302bg9Ijqngdcp3rSclw==
X-Received: by 2002:a05:6a20:4283:b0:1a0:e3c6:18da with SMTP id
 o3-20020a056a20428300b001a0e3c618damr2372160pzj.27.1709313839390; 
 Fri, 01 Mar 2024 09:23:59 -0800 (PST)
Received: from localhost ([98.97.43.160]) by smtp.gmail.com with ESMTPSA id
 i37-20020a635865000000b005dc5289c4edsm3219408pgm.64.2024.03.01.09.23.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Mar 2024 09:23:58 -0800 (PST)
Date: Fri, 01 Mar 2024 09:23:57 -0800
From: John Fastabend <john.fastabend@gmail.com>
To: Song Yoong Siang <yoong.siang.song@intel.com>, 
 Jesse Brandeburg <jesse.brandeburg@intel.com>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>, 
 "David S . Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, 
 Paolo Abeni <pabeni@redhat.com>, 
 Richard Cochran <richardcochran@gmail.com>, 
 Alexei Starovoitov <ast@kernel.org>, 
 Daniel Borkmann <daniel@iogearbox.net>, 
 Jesper Dangaard Brouer <hawk@kernel.org>, 
 John Fastabend <john.fastabend@gmail.com>, 
 Stanislav Fomichev <sdf@google.com>, 
 Vinicius Costa Gomes <vinicius.gomes@intel.com>, 
 Florian Bezdeka <florian.bezdeka@siemens.com>, 
 Andrii Nakryiko <andrii@kernel.org>, 
 Eduard Zingerman <eddyz87@gmail.com>, Mykola Lysenko <mykolal@fb.com>, 
 Martin KaFai Lau <martin.lau@linux.dev>, Song Liu <song@kernel.org>, 
 Yonghong Song <yonghong.song@linux.dev>, KP Singh <kpsingh@kernel.org>, 
 Hao Luo <haoluo@google.com>, Jiri Olsa <jolsa@kernel.org>, 
 Shuah Khan <shuah@kernel.org>
Message-ID: <65e20f2d314bd_5dcfe20857@john.notmuch>
In-Reply-To: <20240301162348.898619-2-yoong.siang.song@intel.com>
References: <20240301162348.898619-1-yoong.siang.song@intel.com>
 <20240301162348.898619-2-yoong.siang.song@intel.com>
Mime-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1709313839; x=1709918639; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:subject:references
 :in-reply-to:message-id:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=RyyU1KTZ+u7IZU/ZLxa5MUX+oMEqsxDrKnYwc61Y+0Q=;
 b=m1xVdMOtTvK4DQJqqRjzDLKYyuGoJcHHoOx4u99/FZa12W7xBA6a5rYqrFsL1zpj13
 8jv+GCnrPNWBqXeTuZtbjY0S8/mPwloGO5wrbPBkr/LgE0Vj9QT7oI7fM4AuvWhTYF3/
 15LU4ueQDlo7ATzjfqcnwyBy3vCsGT0gl3d3ZXtny7HHLVPT2NrKbVCXo6MEfooJbr+d
 tImg5Uvp8rwKdwWEDFdWZBA2FQ9EH4xaOhy9mOZfNNCb3efgjOy0D+m2QOpQcPkd6TXw
 45wwOGWpOzHdLLm0gZOjbHIzYiTbdxVFe/0GRuk89fG3gdyUZI79TyKXvPht8KXBptiJ
 MHWg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=m1xVdMOt
Subject: Re: [Intel-wired-lan] [PATCH iwl-next,
 v2 1/2] selftests/bpf: xdp_hw_metadata reduce sleep interval
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
Cc: xdp-hints@xdp-project.net, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-kselftest@vger.kernel.org, bpf@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Song Yoong Siang wrote:
> In current ping-pong design, xdp_hw_metadata will wait until the packet
> transmition completely done, then only start to receive the next packet.
> 
> The current sleep interval is 10ms, which is unnecessary large. Typically,
> a NIC does not need such a long time to transmit a packet. Furthermore,
> during this 10ms sleep time, the app is unable to receive incoming packets.
> 
> Therefore, this commit reduce sleep interval to 10us, so that
> xdp_hw_metadata able to support periodic packets with shorter interval.
> 10us * 500 = 5ms should be enough for packet transmission and status
> retrival.
> 
> Signed-off-by: Song Yoong Siang <yoong.siang.song@intel.com>
> ---
>  tools/testing/selftests/bpf/xdp_hw_metadata.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/tools/testing/selftests/bpf/xdp_hw_metadata.c b/tools/testing/selftests/bpf/xdp_hw_metadata.c
> index 878d68db0325..bdf5d8180067 100644
> --- a/tools/testing/selftests/bpf/xdp_hw_metadata.c
> +++ b/tools/testing/selftests/bpf/xdp_hw_metadata.c
> @@ -480,7 +480,7 @@ static int verify_metadata(struct xsk *rx_xsk, int rxq, int server_fd, clockid_t
>  					for (int j = 0; j < 500; j++) {
>  						if (complete_tx(xsk, clock_id))
>  							break;
> -						usleep(10*1000);
> +						usleep(10);
>  					}
>  				}
>  			}
> -- 
> 2.34.1
> 

Acked-by: John Fastabend <john.fastabend@gmail.com>
