Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 579C8BA025C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Sep 2025 17:11:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 74F1C84210;
	Thu, 25 Sep 2025 15:11:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EzgASXhXenXD; Thu, 25 Sep 2025 15:11:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E157C84212
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758813077;
	bh=ZmkFbEfQivCqBMVs45gL6yXtOiKwXDMn9AvVAlKM2NA=;
	h=From:To:Cc:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=pasChVo6mhPnya4AJqSTQ0GgtbOARiEUlS2zGrHg1Pz1dW9rT42ugVHUg4ngOpJod
	 /R/zw//97z55zqxZE7ukgk3k21wFIJ9K2z+/YoVkDK5jEwHJ2JnVimnbQHmRzwEgNV
	 q1WZMpQLonZQoipF7K6MIbfSbvncoLsD7QuVFcc36v3pWxsyqldrXuZY2Mt7Og0Yak
	 H+mb74n0k9bwkzHSvf/h7MJosFos9QpelsMeCuI959dFX7W2XJHt3ELN9Fbh9FG5o8
	 aUzlMZKszjcTPwaE3ZsZOCJYaadgLhpAbVB8wMnP+1JLpRXlDfzwKbN4/PBMw6GhPT
	 rvzbFFrQw+sAw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id E157C84212;
	Thu, 25 Sep 2025 15:11:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id C71AE12D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Sep 2025 09:51:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id ACFEA6143C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Sep 2025 09:51:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fPrV4LJTlyxz for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Sep 2025 09:51:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::634; helo=mail-ej1-x634.google.com;
 envelope-from=jakub@cloudflare.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C626E6142A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C626E6142A
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com
 [IPv6:2a00:1450:4864:20::634])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C626E6142A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Sep 2025 09:51:08 +0000 (UTC)
Received: by mail-ej1-x634.google.com with SMTP id
 a640c23a62f3a-afcb7322da8so148181966b.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Sep 2025 02:51:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1758793867; x=1759398667;
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=ZmkFbEfQivCqBMVs45gL6yXtOiKwXDMn9AvVAlKM2NA=;
 b=QWT/YCx0rza/HXoim0Tg/EboVUHJxcsFG1Uajgt0tJmcnZykbpBFyGX6sOUGvTYmpr
 LnsfdgkQMsS1hsS6e8bGdU9w5/IRNf3/sjs/+w3uRfDtZC9SXYXo0dYnAJMnFRDExln8
 IN/LMQHTeb6Hh1ZhxADx2GPsx8BtJu73X9xMKb/4KJNyuVNUgJ9MMXnRxiyiFHAX1a1H
 YSZc7/qBfphkDaIBLlUCDAVLinWtVBDeNGFVTqB9MvykOgoLa5DoSgnMR1f1/OlRP0oM
 5jJbUuQoJGvyR9mo281miLYnJei/yr+E0g+R6x1L2Lg9emZCuGgieqh9/pYrwihnq4Ds
 eK5g==
X-Forwarded-Encrypted: i=1;
 AJvYcCU/razTONmVSmX4NDNMx1EtBJs3E3hzyiU6zz01Qwl156qHkC/YIFadqcmbGqHrPyinaj54AfVGIPOXIbRdwWM=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yyuc3YE/zzvLm0qIlTUOFBvxaheJiqZmBlK2g0MXIZ4uW00ogFF
 57oxKpyGYRzfW2riOfto+WkzgJ8lZ2Xhif8Y6/E2JGzn7L1BWdkPTmzD+Ny8962rCrI=
X-Gm-Gg: ASbGncumZKW4A6RM+sgps115cO2qJwsHqYWMelvW1+UnRxInmkZ7qaxFerf8X+8iuDO
 oGumbxGIs1rhTzkKI4oa8vi0bwcYc4na2WUdVAu5mBhftfKmRfhCe2yMDtGY8fz+vo4BQ9gsvDv
 xdOysHh4VdI5/gczNT/z0s1wGk73XR8J0UtHtGHYHovJrvUL5TzDvfGL/bSl46enVHbfffNHM6A
 ooeZ6kWyn1rKyCaNlNTToM7+twUWezUczuRErL3MkBeDYq+boFQ1ggTNxurU/Th1oNXUK7JoT4l
 5TjvXN1SRsM0ur5trfh0SRIFEHsOEbe5i+vSr2lOvrFJ+BfXEGIyLghRyKMPrTiTaZ2MeGL20K5
 eU5vF2KKVqF68qcc=
X-Google-Smtp-Source: AGHT+IGEVGUv7B9GwkQ2/AJ6K1sBRZgNTUuhBCswgHVtL42XXaKHIxqK5bg7kju7asdvwIL8eCRs8w==
X-Received: by 2002:a17:907:1c8d:b0:b33:671:8a58 with SMTP id
 a640c23a62f3a-b34bd440633mr294373466b.37.1758793866605; 
 Thu, 25 Sep 2025 02:51:06 -0700 (PDT)
Received: from cloudflare.com ([2a09:bac6:d677:295f::41f:5e])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-b353f8686e6sm131994066b.38.2025.09.25.02.51.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Sep 2025 02:51:05 -0700 (PDT)
From: Jakub Sitnicki <jakub@cloudflare.com>
To: Lorenzo Bianconi <lorenzo@kernel.org>
Cc: Donald Hunter <donald.hunter@gmail.com>,  Jakub Kicinski
 <kuba@kernel.org>,  "David S. Miller" <davem@davemloft.net>,  Eric Dumazet
 <edumazet@google.com>,  Paolo Abeni <pabeni@redhat.com>,  Simon Horman
 <horms@kernel.org>,  Alexei Starovoitov <ast@kernel.org>,  Daniel Borkmann
 <daniel@iogearbox.net>,  Jesper Dangaard Brouer <hawk@kernel.org>,  John
 Fastabend <john.fastabend@gmail.com>,  Stanislav Fomichev
 <sdf@fomichev.me>,  Andrew Lunn <andrew+netdev@lunn.ch>,  Tony Nguyen
 <anthony.l.nguyen@intel.com>,  Przemek Kitszel
 <przemyslaw.kitszel@intel.com>,  Alexander Lobakin
 <aleksander.lobakin@intel.com>,  Andrii Nakryiko <andrii@kernel.org>,
 Martin KaFai Lau <martin.lau@linux.dev>,  Eduard Zingerman
 <eddyz87@gmail.com>,  Song Liu <song@kernel.org>,  Yonghong Song
 <yonghong.song@linux.dev>,  KP Singh <kpsingh@kernel.org>,  Hao Luo
 <haoluo@google.com>,  Jiri Olsa <jolsa@kernel.org>,  Shuah Khan
 <shuah@kernel.org>,  Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 netdev@vger.kernel.org,  bpf@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org,  linux-kselftest@vger.kernel.org
In-Reply-To: <20250925-bpf-xdp-meta-rxcksum-v2-0-6b3fe987ce91@kernel.org>
 (Lorenzo Bianconi's message of "Thu, 25 Sep 2025 11:30:32 +0200")
References: <20250925-bpf-xdp-meta-rxcksum-v2-0-6b3fe987ce91@kernel.org>
Date: Thu, 25 Sep 2025 11:51:04 +0200
Message-ID: <87bjmy508n.fsf@cloudflare.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Mailman-Approved-At: Thu, 25 Sep 2025 15:11:15 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cloudflare.com; s=google09082023; t=1758793867; x=1759398667;
 darn=lists.osuosl.org; 
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:from:to:cc:subject:date:message-id:reply-to;
 bh=ZmkFbEfQivCqBMVs45gL6yXtOiKwXDMn9AvVAlKM2NA=;
 b=UHAkgxTx5fqVup7nUj4NowCetcTRxjaqLBWqxFkS/uwpPjS2KGmBDNvijfxKQBYA+W
 pJSpjRu/nFYOtoOr9htElqlnSgRIvJmz7TOaEtQlCTnzmmSK3SsOxDA4ADXJq0RHhhkm
 qVUIYG1ivCMbWCTvtWPG6mhJeQLZL7KximJPSlgMohcUWm0m1wEA0n2e7jjeJYD4anDW
 RthXMGJjaCgt1fmmSrXftxg2tCY3tjiBzziSTfnaSkcF+UQu8kf7UP1MExJJEM/iZXlN
 wafAN62NOHcpSx7tX9T2fPwpc/3u4DoJEWZ/OuWom0ObPSFGILLDfoZC3wgvEHlcZUHp
 WMYw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=cloudflare.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=cloudflare.com header.i=@cloudflare.com
 header.a=rsa-sha256 header.s=google09082023 header.b=UHAkgxTx
Subject: Re: [Intel-wired-lan] [PATCH RFC bpf-next v2 0/5] Add the the
 capability to load HW RX checsum in eBPF programs
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

On Thu, Sep 25, 2025 at 11:30 AM +02, Lorenzo Bianconi wrote:
> Introduce bpf_xdp_metadata_rx_checksum() kfunc in order to load the HW
> RX cheksum results in the eBPF program binded to the NIC.
> Implement xmo_rx_checksum callback for veth and ice drivers.

What are going to do with HW RX checksum once XDP prog can access it?
