Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 31301B91FDD
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Sep 2025 17:39:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BC6B441FCC;
	Mon, 22 Sep 2025 15:39:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dYULiD-gSAun; Mon, 22 Sep 2025 15:39:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4903B41E13
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758555547;
	bh=/+2ag/iV4mxazDtCnvPykVJFi1jwwbRDl7dA4X3Ytkc=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=JZ8dHeggOh3W46sL62jn/RGMFqp8OW9fyrCG7cG5fLDsXx1B7eYa6Yn7mjeliv063
	 5ROq2CmEZHtKXB+iqmatAYBsouM88JrrioSFOSbjz22KyWoblw7HsPlHWz4C1uPqh5
	 3Lx8qRVYwt9UVeFjTeMXOXnI1xIz8BKM7YwbFWDPa/Li4oUPTr0P863sWOgN9ict1g
	 eHOUpUUFFo+IRe0oC1CyKy76Wsz+dg/bhECAH2vRMiz42sCKiOlMfguwFEncGjpoRG
	 VDcl4hOuowh+iBVKVRbCp5u3gJ5p6iEQrL7rkLSQk87xATlW5r7FoguV9yiJRgH0ha
	 TRCclkbhXopbQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4903B41E13;
	Mon, 22 Sep 2025 15:39:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 493E61C0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Sep 2025 15:39:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3AE99405D9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Sep 2025 15:39:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LJ3Q18lOp6PE for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Sep 2025 15:39:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::42c; helo=mail-pf1-x42c.google.com;
 envelope-from=stfomichev@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 85CBC40597
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 85CBC40597
Received: from mail-pf1-x42c.google.com (mail-pf1-x42c.google.com
 [IPv6:2607:f8b0:4864:20::42c])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 85CBC40597
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Sep 2025 15:39:04 +0000 (UTC)
Received: by mail-pf1-x42c.google.com with SMTP id
 d2e1a72fcca58-77f1f8a114bso1431682b3a.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Sep 2025 08:39:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1758555544; x=1759160344;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=/+2ag/iV4mxazDtCnvPykVJFi1jwwbRDl7dA4X3Ytkc=;
 b=I/j8SCl6NI/UMyScH4hhCQJk4WhGMlEIZxyTp7mJ3jsOfdPlEmyfO7vU5eCosLDR9P
 ZOXF9te6fGzOfBsjtQeB7ySeU9vMfa3n+8hRZjdGlDEJjxZCnED0WB00GAthqvPi6YZI
 qAvrSwCa6KsbY3TG11Ey6X7EyZz7q+4becCoShM0p1qCZ7JvxpDn7esJqYj1c/jEkQaL
 SovL1u3MStQX3h8Z9aQHv1XH7cXV0hR/FvxkrzAsM7rarW4hDsaLNevNcsutkYDrS7P5
 b4qqUVwozzdGIjzbu65r3ytPj3X5GfIVGx+fbf3ZzHzlxdeJW5QLRtrlXklf64T9nshK
 KNuA==
X-Forwarded-Encrypted: i=1;
 AJvYcCUE4DKaIqj1qCIqGOLOrBHY1o7Io1nfIGGUtcl9kwPz+R3a4cMIjEK9yExHq482kWb3t5rPG+6VwZofTM+RKCE=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yx5X/RhSA+lqNqI6OTRF8j8/KHt6M6QFg+jGciz0DEMIY0Fo9id
 ZzhMc0iPYcf1v/8/+C+QdR52szb3sac6yPOCnTzAHgUjddNwgGTCUvA=
X-Gm-Gg: ASbGncuPRwISDqztMktLJiwdaHTq6R6KlZ+s64y3FjtMfFiNxKNygI+ReV+73tA79vf
 5bYRYHGdmTmMumZ28DpCQ1JZsRiB1qr9/19ZAGdCIYEBy+BF0RZcgy8aDPgF3oqrjRh4EjeuGwx
 3EtApkQrPJ5Jyy4LtC0iCJrVOK7sKfmCD6P5mfn1wX4D4h4jI124Nx136lTPv8ypOCpivmtYUM5
 ZG2DfkwYApf1rirLovb7dta7iN57iNVDuYvJXquh62SRtawi3V2VMmhgU6ZitjcnacDaPtLjPi0
 umUr0SR8y40M7JP5Y/QZWBgnHqMYvcnswyQlKx55juScRYhtLUNiWGGwuhAotQmPiXes8OVZ/mC
 q16KPGZWXs2KUdaeer2ukhvTtGZVW6iH53qe7BoPpHJtkZ2IWh9/QiWH+rkKhCgt/4t2WBwuwe+
 kJLJ1+2JGZXjxGtzq1eEMFHOwSLBg4GBXfZBGqouT0hcP+/CeUMIq+ptHITT4w9tBlCLV+q5oWV
 KTs
X-Google-Smtp-Source: AGHT+IE3TS2ZT2iVwXx8IVuVRd65DCwplvU4zTMTt2k1/M2gr1xCgjuzcB7lSRGACmTncGG25EZblA==
X-Received: by 2002:a05:6a20:4327:b0:245:ffe1:5619 with SMTP id
 adf61e73a8af0-292189dd44emr15040347637.23.1758555543694; 
 Mon, 22 Sep 2025 08:39:03 -0700 (PDT)
Received: from localhost (c-73-158-218-242.hsd1.ca.comcast.net.
 [73.158.218.242]) by smtp.gmail.com with UTF8SMTPSA id
 41be03b00d2f7-b55149526cfsm10207767a12.36.2025.09.22.08.39.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 22 Sep 2025 08:39:03 -0700 (PDT)
Date: Mon, 22 Sep 2025 08:39:02 -0700
From: Stanislav Fomichev <stfomichev@gmail.com>
To: Lorenzo Bianconi <lorenzo@kernel.org>
Cc: Donald Hunter <donald.hunter@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
 Simon Horman <horms@kernel.org>, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 Stanislav Fomichev <sdf@fomichev.me>, Andrew Lunn <andrew+netdev@lunn.ch>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Andrii Nakryiko <andrii@kernel.org>,
 Martin KaFai Lau <martin.lau@linux.dev>,
 Eduard Zingerman <eddyz87@gmail.com>, Song Liu <song@kernel.org>,
 Yonghong Song <yonghong.song@linux.dev>,
 KP Singh <kpsingh@kernel.org>, Hao Luo <haoluo@google.com>,
 Jiri Olsa <jolsa@kernel.org>, Shuah Khan <shuah@kernel.org>,
 netdev@vger.kernel.org, bpf@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-kselftest@vger.kernel.org
Message-ID: <aNFtljcYeLK3uVo3@mini-arch>
References: <20250920-xdp-meta-rxcksum-v1-0-35e76a8a84e7@kernel.org>
 <20250920-xdp-meta-rxcksum-v1-1-35e76a8a84e7@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20250920-xdp-meta-rxcksum-v1-1-35e76a8a84e7@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1758555544; x=1759160344; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=/+2ag/iV4mxazDtCnvPykVJFi1jwwbRDl7dA4X3Ytkc=;
 b=WyN3/srjgvRVr0iMroMVMq/AEenKKS7egQwcSqC3OCW8xFrYuGGres0Bz2LS4Q3Ar7
 ZzQwaSFs+mgX0gvuVDLThcvXaxGi/T2Do56s8jnMRiY5Fc+e4W8fS3ncN7PjY6XRhCy6
 4dIVVuHviYN9Rxson7O1N1KiJmF0oieB7In/4NUtMQhO+xG8Jc3LuYRwk+Wyz2JMyXLz
 EYXR6qMfjeIoezBnUOJFM0bC/kHxGE06x4x16wOQTJLK2g8XJHbyk8RIisB9TaWVbC4/
 6Ga54yImFecjkYhwPWsk/Gq4E/dFPy/r68Ynpo/8BmN9o8icseUtjIMB3Jbq+0TsiHhh
 3baQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=WyN3/srj
Subject: Re: [Intel-wired-lan] [PATCH RFC bpf-next 1/6] netlink: specs: Add
 XDP RX checksum capability to XDP metadata specs
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

On 09/20, Lorenzo Bianconi wrote:
> Introduce XDP RX checksum capability to XDP metadata specs. XDP RX
> checksum will be use by devices capable of exposing receive checksum
> result via bpf_xdp_metadata_rx_checksum().
> 
> Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
> ---
>  Documentation/netlink/specs/netdev.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/Documentation/netlink/specs/netdev.yaml b/Documentation/netlink/specs/netdev.yaml
> index e00d3fa1c152d7165e9485d6d383a2cc9cef7cfd..00699bf4a7fdb67c6b9ee3548098b0c933fd39a4 100644
> --- a/Documentation/netlink/specs/netdev.yaml
> +++ b/Documentation/netlink/specs/netdev.yaml
> @@ -61,6 +61,11 @@ definitions:
>          doc: |
>            Device is capable of exposing receive packet VLAN tag via
>            bpf_xdp_metadata_rx_vlan_tag().
> +      -
> +        name: checksum
> +        doc: |
> +          Device is capable of exposing receive checksum result via
> +          bpf_xdp_metadata_rx_checksum().
>    -
>      type: flags
>      name: xsk-flags

nit: let's fold it into patch 2? Will be easier to git blame the
feature..
