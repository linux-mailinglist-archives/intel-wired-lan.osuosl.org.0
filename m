Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C9610A1AA97
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Jan 2025 20:48:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 69A80819ED;
	Thu, 23 Jan 2025 19:48:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QMUcXrMOAEeC; Thu, 23 Jan 2025 19:48:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 81E7C8149B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1737661688;
	bh=/ehvXM/x2Xpjmareg8hVceTaEqRxIeAlXfZcNgyZJpQ=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=RrvHvc/Q1MSA43fm9elKIAj0m+H/1I+/86Lt3WXCvXQ9v+eduL/IsrRKXrgNKuyjs
	 1nJDIHd7oIaHOkwb8DasDqfDSUjaV7av+co96k2sUzddJ44SkIIqjtR6McSaSV1Dkf
	 tr9nU4h298l7djMAB61mVmfxXQ496VSx7NpdpsdXtHGwJP+Ie4/N+JN/uJ8haOlNby
	 5ArvGBajDbMn1EMU0zfGcGW0W6b0i1JyxJcDMLlnQ2jjgae2o7ftvHv7R2Ttjk9eYN
	 MuHc9lebOJPTM/wEsFG/VHcdd/NzP9Hj6p5cBg6unSdt+Uyu5bMjVxYigNk5EjZp2d
	 IFNMp9zrb1jYA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 81E7C8149B;
	Thu, 23 Jan 2025 19:48:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 5D2D9959
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jan 2025 19:48:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3DD6540176
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jan 2025 19:48:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7NchWm9QcnwZ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Jan 2025 19:48:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::62d; helo=mail-pl1-x62d.google.com;
 envelope-from=stfomichev@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 4E50840118
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4E50840118
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com
 [IPv6:2607:f8b0:4864:20::62d])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4E50840118
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jan 2025 19:48:05 +0000 (UTC)
Received: by mail-pl1-x62d.google.com with SMTP id
 d9443c01a7336-2161eb94cceso16292525ad.2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jan 2025 11:48:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1737661684; x=1738266484;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=/ehvXM/x2Xpjmareg8hVceTaEqRxIeAlXfZcNgyZJpQ=;
 b=rHeYqa64694VXY6cOrByBFlvX+AxZlYL14MZRJKwZrp2HO0RSQ8KcjktDmgVytd1BG
 yWNdIvkOHlFO/HQI9f4hLQPeRFtxoERupGOnseCkj5MD2G0wA/dS1v90THu69cyc+zrK
 gCg6RefA0/mb3p2+9btTzWp8gifXtnOCU2CXZr4GI82vHQc/1rZzSJXIzpPJa9H8dfsl
 tHR1N5dUHcZv9loGq8fu8aGkXq0pMRHmRth+i0SBR6lAaOkJWQadXimfER9+kzrvV96U
 iFM6lqIvxDFP+xO7mc3S0B2RfsJReXmkiM+aJmF57eZ8OGjpgK1XsTRl1Uf/NjGtypFv
 4r/g==
X-Forwarded-Encrypted: i=1;
 AJvYcCVRPyfJ9sOjWL8GPoMYvB+3ecje7QLe2/8ThqZv6aJpM0cMs/vo5JDbh2H5Q6f3xF9JTliJtanout90abkWsCE=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzLx8S4nO49dxqIMd1nmGk/J3Q374krbgjlUz8lNw85yiiOIDy5
 v32H8Hld3AzE/IxSKH/KJ1bGaw3bNMRfymHQ29aR9iAUycfNBYA=
X-Gm-Gg: ASbGncurFwH3ADlnbOEqs9ZSqwV6W8ZF4zWbNptCLCf2zX7KV93n7VxqgCHw3VUwPlt
 PtJj/0FNSO75wI8FjdjN1ZeOSt324u5Te2X979VINJJ1xFibeK2NPMA+X5qRJ969p62PO6vhNVt
 KLFNp5xvhN/bgcGa2Ax2lf7IuvaXj7IInB7QJ5FWT5PXU4aWn0RSLj97xGASZ4IBaRd9a/p3hc0
 nvLXnpFVcchy6PYYvwMLbVYLLJHi1KWTzqGU5Uz5E4QTjjpySiqz98U4QpRWHDzkfLwd+5iE5uT
 MN3/
X-Google-Smtp-Source: AGHT+IHN0sZtZXkNpILip1vz+eYUU1Y/MTgN8GKmFzFYwee95EZNDldTyC5bmSvcCfRBqUDdtCAgnw==
X-Received: by 2002:a17:902:e548:b0:216:60a3:b3fd with SMTP id
 d9443c01a7336-21c351d345amr370312355ad.3.1737661684548; 
 Thu, 23 Jan 2025 11:48:04 -0800 (PST)
Received: from localhost ([2601:646:9e00:f56e:123b:cea3:439a:b3e3])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-21da3ea2430sm2880515ad.65.2025.01.23.11.48.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Jan 2025 11:48:04 -0800 (PST)
Date: Thu, 23 Jan 2025 11:48:03 -0800
From: Stanislav Fomichev <stfomichev@gmail.com>
To: Song Yoong Siang <yoong.siang.song@intel.com>
Cc: "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Simon Horman <horms@kernel.org>, Willem de Bruijn <willemb@google.com>,
 Florian Bezdeka <florian.bezdeka@siemens.com>,
 Donald Hunter <donald.hunter@gmail.com>,
 Jonathan Corbet <corbet@lwn.net>, Bjorn Topel <bjorn@kernel.org>,
 Magnus Karlsson <magnus.karlsson@intel.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Jonathan Lemon <jonathan.lemon@gmail.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>, Joe Damato <jdamato@fastly.com>,
 Stanislav Fomichev <sdf@fomichev.me>,
 Xuan Zhuo <xuanzhuo@linux.alibaba.com>,
 Mina Almasry <almasrymina@google.com>, Daniel Jurgens <danielj@nvidia.com>,
 Andrii Nakryiko <andrii@kernel.org>, Eduard Zingerman <eddyz87@gmail.com>,
 Mykola Lysenko <mykolal@fb.com>,
 Martin KaFai Lau <martin.lau@linux.dev>, Song Liu <song@kernel.org>,
 Yonghong Song <yonghong.song@linux.dev>,
 KP Singh <kpsingh@kernel.org>, Hao Luo <haoluo@google.com>,
 Jiri Olsa <jolsa@kernel.org>, Shuah Khan <shuah@kernel.org>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Jose Abreu <joabreu@synopsys.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-doc@vger.kernel.org, bpf@vger.kernel.org,
 linux-kselftest@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org,
 intel-wired-lan@lists.osuosl.org, xdp-hints@xdp-project.net
Message-ID: <Z5Kc8wufjrsXMCW9@mini-arch>
References: <20250116155350.555374-1-yoong.siang.song@intel.com>
 <20250116155350.555374-3-yoong.siang.song@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20250116155350.555374-3-yoong.siang.song@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1737661684; x=1738266484; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=/ehvXM/x2Xpjmareg8hVceTaEqRxIeAlXfZcNgyZJpQ=;
 b=cmZE2bBQQY8nAorJ7yLwENQZLZNaQ40hobJIl1B7zse4o6kLK5o0T8XEr27K4RNOAT
 jEDkP0+EeqRX7ISlgyiOMiTpDPrQAeAegQRRnZuMWCXRT0HOIDEh9lbJq0dbdnKeSSML
 7NF02pthfqr0e9yUZqcJRdqH6V7+a4rINJXKM3QG60FD4WfLMUbchbpXQXyoDMSg7DuM
 vQUx1LGwR9wcGkgvO9X7zC9EDs7QvIYiEK6th/vnqZ3+wskdaKuAKBTp0vV3lBvP+xnp
 +bhoktRDPMDryLqtf/szeZKq3Az9Z91ttsuEw/spnEJymfp4YmZSsouwW1xDeK2DcuCE
 HriA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=cmZE2bBQ
Subject: Re: [Intel-wired-lan] [PATCH bpf-next v6 2/4] selftests/bpf: Add
 launch time request to xdp_hw_metadata
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

On 01/16, Song Yoong Siang wrote:
> Add launch time hardware offload request to xdp_hw_metadata. Users can
> configure the delta of launch time relative to HW RX-time using the "-l"
> argument. By default, the delta is set to 0 ns, which means the launch time
> is disabled. By setting the delta to a non-zero value, the launch time
> hardware offload feature will be enabled and requested. Additionally, users
> can configure the Tx Queue to be enabled with the launch time hardware
> offload using the "-L" argument. By default, Tx Queue 0 will be used.
> 
> Signed-off-by: Song Yoong Siang <yoong.siang.song@intel.com>

Forgot to add:

Acked-by: Stanislav Fomichev <sdf@fomichev.me>
