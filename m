Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 22E35D16C37
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Jan 2026 07:08:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7953C61531;
	Tue, 13 Jan 2026 06:08:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CgHlz7YvrzeW; Tue, 13 Jan 2026 06:08:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F053661535
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768284536;
	bh=X9ZSFs1AHwHUdEkUdQBHwokHKh6cloNR08U6DUqtuI0=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=pqVNComTJs7SmeAckVGFS4BFX6b5BIBzSd+LkdIAqlhKide5jeVAvOlqc3ZStsOyP
	 npIXMDMfAlrdNjT/NAsBkNjo6G/e4C5wVgv6ccbGUsDIMA0Wz9WWYf8RmCtVoPo/e7
	 fAJeSXiOuBd+VJJFB856ZqccygnHDe9bDBfyuMECxpYOMD7yPuPDOxlzx7XxlHg0ee
	 0WRfdA3+haKnsb7sqotKaFhSRRXD2LKS6CR/H/ruBDpbU5xnk7rK2YF0X3sigYqPQT
	 +WtA9HkKG7LkHfamrdrKXUDNgKw79mCNe4DAal1N5MqRAE4yzpF3Q1nfYciVVk3dQL
	 LwE+WqHO5MjIQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id F053661535;
	Tue, 13 Jan 2026 06:08:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id EF0B31CC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jan 2026 06:08:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D56CF405EC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jan 2026 06:08:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PBWKkBxCRPyI for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Jan 2026 06:08:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::32c; helo=mail-wm1-x32c.google.com;
 envelope-from=ttoukan.linux@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E6D0640025
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E6D0640025
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com
 [IPv6:2a00:1450:4864:20::32c])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E6D0640025
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jan 2026 06:08:52 +0000 (UTC)
Received: by mail-wm1-x32c.google.com with SMTP id
 5b1f17b1804b1-4775ae5684fso32500685e9.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 22:08:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1768284531; x=1768889331;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=X9ZSFs1AHwHUdEkUdQBHwokHKh6cloNR08U6DUqtuI0=;
 b=RACrfVv9q9NLKrkjeSha9NXn5OPMZzDMRTIv+vFd3SRpC/PtoMJVCTnZu/AgDiMX1t
 lP3VxdKbT4IhViiGSABE1D1MJC+H59agp74f5Ik7GMgUwbuJUfoF7LBFh+C9Bf0xifaT
 NAKuTvyEb00EdhrB059LT/ODnLBGkJI1u5EXIdI16NyQQtuBxNXoWWp95883cF7JA3xk
 AGdvh2RjQrKLXpcSfnAlyF48joG1b0klWf5XFmYtEAVGWgepz2byK7GODuJVSiUsUaNo
 Jh7bqVbhqOcYOCdcympM1lG/jawDfKePocfWD+YRt0MWcV52O+JVXU/1qUZ07A3iPfIP
 elZA==
X-Forwarded-Encrypted: i=1;
 AJvYcCXgpCFgYj+Kqy4J9mc3UjJ5HmypvyUK1E8VDDQ8YFKCQSIbgvbArMBW9ZeWl80SpBtJ+oqxqXhEWNNhVqtuPMA=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yx0CoAdjnPbh+0SbzgAswxx+IOoASxRKWOXPwBh8nwL/d/MWL0N
 E7DP8JEj2zoDdC43ZkhzO8W+UcHOcOp8vBiMBD8kZiIgcELHPv8595C8
X-Gm-Gg: AY/fxX4Q1b9tEv8pXY+Xs016pyLBB6Wfd9e6VjTSYWaPgkQaJJY7HWhmPYdtpvDUw5I
 umGFk6a9fxCytLqz0utE5Hj61DjFVwIQQHahqwUdjUyMH3IROPKTa2JVyY9Jb/c6jK62/eTAFtJ
 1O8wMzWSao3RvCizkPuGglaLDxC2x7vBrQqHDxtpWkOpgLRLOpMGKwLFaTdZHudpURab9J15Xp5
 fwJag/hiWCvSg/JPogE8GAue/nJ5nYMPHLOmdjph7ffNdvQmjd76LjH6a5x00TETIVPol+XP0g3
 oaSJxhAHjUZWENSzTjrE27WrXO2xAogZJPpDnRkeVjRfNlaFPf401mgml3e5ODo+BG94uSQMzwl
 vuLTwJMkiSlyRsVzHor27Tzk7HS0zUZVYyn8WycjLcuSsa1hHXNuqF0o9N1RAL6m0eiuCchKJx2
 udrP8BTTydIJqRjLE58rzgyXH0XOxIPTu1O17mg5vSv6iwOA==
X-Google-Smtp-Source: AGHT+IG15wErQ03UH9DVDeoYCjGbCNvRirkF29C6VV/Z9728PIAUXXm8+rFEeW3TuGRjq5cyJFWLUA==
X-Received: by 2002:a05:600c:45c3:b0:46e:48fd:a1a9 with SMTP id
 5b1f17b1804b1-47d84b3f642mr218415835e9.33.1768284530620; 
 Mon, 12 Jan 2026 22:08:50 -0800 (PST)
Received: from [10.221.200.118] ([165.85.126.46])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-47d7f620ac8sm378935045e9.0.2026.01.12.22.08.48
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 12 Jan 2026 22:08:50 -0800 (PST)
Message-ID: <4261e437-84b2-4d0d-af52-c5ee7fcf07cb@gmail.com>
Date: Tue, 13 Jan 2026 08:08:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jakub Sitnicki <jakub@cloudflare.com>, netdev@vger.kernel.org
Cc: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
 Michael Chan <michael.chan@broadcom.com>,
 Pavan Chebbi <pavan.chebbi@broadcom.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Saeed Mahameed <saeedm@nvidia.com>, Leon Romanovsky <leon@kernel.org>,
 Tariq Toukan <tariqt@nvidia.com>, Mark Bloch <mbloch@nvidia.com>,
 Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 Stanislav Fomichev <sdf@fomichev.me>, intel-wired-lan@lists.osuosl.org,
 bpf@vger.kernel.org, kernel-team@cloudflare.com
References: <20260110-skb-meta-fixup-skb_metadata_set-calls-v1-0-1047878ed1b0@cloudflare.com>
 <20260110-skb-meta-fixup-skb_metadata_set-calls-v1-7-1047878ed1b0@cloudflare.com>
Content-Language: en-US
From: Tariq Toukan <ttoukan.linux@gmail.com>
In-Reply-To: <20260110-skb-meta-fixup-skb_metadata_set-calls-v1-7-1047878ed1b0@cloudflare.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1768284531; x=1768889331; darn=lists.osuosl.org;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=X9ZSFs1AHwHUdEkUdQBHwokHKh6cloNR08U6DUqtuI0=;
 b=CPNTVIJk/k8oIkO1igzc8qnlUhykVU7lQYz2UAwTS48A91aXywQm4O/sdDTqdKYWNX
 4/IgARCJdsArMW3u8+JW5faX0ABMK/O/F/To45WT3FpE2riKm/CrBY/BuwyqNgTO1Ies
 tT10Y+8HE/Hl+bpjBSqkJwQgmD1iu6HtI3xmh1Cjd3MqCnu93HyBZZpFLEQkZ2UF/MQ9
 0Lp7zVsxr246bMVziHOHwXjOdhi9Nh9CmA+qxpCrEipQSFu3MCLL+hIuDOohwECgRrMP
 ZeW/0rBJgcEUcse1bqpZdWkdHnKAaEPTg6GGzTZikBAC5VRsY+9Bmiavcm2JCeCIWlV1
 z0CQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=CPNTVIJk
Subject: Re: [Intel-wired-lan] [PATCH net-next 07/10] mlx5e: Call
 skb_metadata_set when skb->data points past metadata
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



On 10/01/2026 23:05, Jakub Sitnicki wrote:
> Prepare to copy the XDP metadata into an skb extension in skb_metadata_set.
> 
> Adjust the driver to pull from skb->data before calling skb_metadata_set.
> 
> Signed-off-by: Jakub Sitnicki <jakub@cloudflare.com>
> ---
>   drivers/net/ethernet/mellanox/mlx5/core/en/xsk/rx.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en/xsk/rx.c b/drivers/net/ethernet/mellanox/mlx5/core/en/xsk/rx.c
> index 2b05536d564a..20c983c3ce62 100644
> --- a/drivers/net/ethernet/mellanox/mlx5/core/en/xsk/rx.c
> +++ b/drivers/net/ethernet/mellanox/mlx5/core/en/xsk/rx.c
> @@ -237,8 +237,8 @@ static struct sk_buff *mlx5e_xsk_construct_skb(struct mlx5e_rq *rq, struct xdp_b
>   	skb_put_data(skb, xdp->data_meta, totallen);
>   
>   	if (metalen) {
> -		skb_metadata_set(skb, metalen);
>   		__skb_pull(skb, metalen);
> +		skb_metadata_set(skb, metalen);
>   	}
>   
>   	return skb;
> 

Patch itself is simple..

I share my concerns about the perf impact of the series idea.
Do you have some working PoC? Please share some perf numbers..

