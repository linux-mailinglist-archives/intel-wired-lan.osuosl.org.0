Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 53BF8A04715
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 Jan 2025 17:50:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A851560662;
	Tue,  7 Jan 2025 16:50:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lUbL1v4kS2G9; Tue,  7 Jan 2025 16:50:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B3D9E60740
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736268616;
	bh=1kkw8OsqKUstZ6+HR7QBUZKdgqA2L6g+toZ/3deeQ/o=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Nk1aM+hDcvWhSrm6p6Uvy67WwbrIWm0dci3oF+6QTOhTbxv4vwfFnPBK7SaLhrWXl
	 wx8so81zuNZ4ABlcQwUmZ94L3UJ3bbcS2UCR9MTI/0xwquywjZu00z4XkWWIV75KJf
	 +OQTfrW66w9REKBiinA7itpUL8CqZPq3zVsMxoBWceFrIl4Zy+/QNchDHlm2AfZboq
	 L1BzgVB5tLz7PASA5uZ6jlPGEW3+ZYj4pjxXaLvPqoLS3fU/f9AYiZyH7SnLwZDRDJ
	 4PVPbGTq0UJFGjGfTbut6xbws+xDXgEgeUHLTRpzQfxnz7we+APeTFEkWEfmf8297W
	 qI4yYR1OdDuxQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B3D9E60740;
	Tue,  7 Jan 2025 16:50:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 033CE7AA
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jan 2025 16:50:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D838A812DA
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jan 2025 16:50:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yDvy_fqrvB7H for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Jan 2025 16:50:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::62d; helo=mail-pl1-x62d.google.com;
 envelope-from=stfomichev@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org D078A80C51
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D078A80C51
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com
 [IPv6:2607:f8b0:4864:20::62d])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D078A80C51
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jan 2025 16:50:13 +0000 (UTC)
Received: by mail-pl1-x62d.google.com with SMTP id
 d9443c01a7336-2166f1e589cso13838215ad.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 07 Jan 2025 08:50:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1736268613; x=1736873413;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=1kkw8OsqKUstZ6+HR7QBUZKdgqA2L6g+toZ/3deeQ/o=;
 b=J5WwGE2jbIbB3OCStcv8g4977s3cA+5hUAYxnigTkzfq2vxkCDDtx4eRCAo8SpavR/
 QhWcrBxaelT4KVME+MpmXRCBS07nQo+8EKtpJPxsuPwrAWwEDEgdmQePIKws4sxo+y8w
 yo9wB2exFLFfRvKofZWaFZeMBQWvBZGiQ03Zt8Cmn+Dv+EENYGw6Kb7DbpapndxWggBF
 RPCRzNw3AM6GPLqMbhgXbF69qGLxAUeQC/J+tPITnVXAD1TE/sZ0PuODSeqaFIdmrApy
 tvUGEaGgHDtKb8ioNuZdhYyXFc7fUE+JrPvhM42GHt7WY8ER7oi2gfJhOCNzCbZFjyVj
 9tKQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCXoieew73dgsYCjSDAQrWOcLQ0RoQ90d6/NN7apZHZvmP0GPD3q3Kt2DxflXm5SpoLUNVfj8D+bG9egs32OFeQ=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzYpiPr0pVudZX2jU/Jsz9G5uuolHlan/UDRzaELxyU+0UOefQ8
 XqiYeUZuarxpjJUYySrhcEOcHmbB8cHzouWTt8AdQ5Ub8e/Clrw=
X-Gm-Gg: ASbGnctSWAagtQCPmc0i0X9eNvDDICRBFgSD8GjB+Af1Pfb3N89oz4KOwXl7A/9pW6Z
 sfTYnysOPXtEmSmdhtmYnEG4s+xBVYlTsdVkfR6ldoNWbC27ev+wdqZJxXMoU6X9cxE16A7L6/i
 lPrSyuP1mThlgIrMPEwtkxcP0PMTXTt3uo0CRNKfKg+S04OJM6VP2e5es5yTee5fCiskXThKuKK
 Qv9pMHnF2j/E0abc6hDT5UoLlqkEW0FkCdYxGjC40E8reAP2DB3icuY
X-Google-Smtp-Source: AGHT+IFENMHtBxMqOYbLnyZklK8TxKhy57F1FhvRUtYUInQIrUA9rU8ymAx4xYOehq+j+0FGzA2uug==
X-Received: by 2002:a17:903:41d1:b0:217:8557:5246 with SMTP id
 d9443c01a7336-219e6f4979amr721019265ad.55.1736268612929; 
 Tue, 07 Jan 2025 08:50:12 -0800 (PST)
Received: from localhost ([2601:646:9e00:f56e:123b:cea3:439a:b3e3])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-219dc9f7d83sm314319215ad.226.2025.01.07.08.50.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Jan 2025 08:50:12 -0800 (PST)
Date: Tue, 7 Jan 2025 08:50:11 -0800
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
 Amritha Nambiar <amritha.nambiar@intel.com>,
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
Message-ID: <Z31bQ6xEkyQvbutN@mini-arch>
References: <20250106135606.9704-1-yoong.siang.song@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20250106135606.9704-1-yoong.siang.song@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1736268613; x=1736873413; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=1kkw8OsqKUstZ6+HR7QBUZKdgqA2L6g+toZ/3deeQ/o=;
 b=APXcv3jhi5D2KxrQz8NcHDVVk4DZc4I4XStS06MiYBPd4SuK7EzWZMMxLZfUcNW/D7
 U0SKLZWNvl3iSK/JZzvZSJTPBhZ/B+Laly9qJu/1QO5rm9iDJX3cTmU9HcWle3onTypO
 StkQb0ga+MRBe1gUqmmW+VMm2OF2zSkmVGtpXvHN146Y9h3Z9YVzl4esNF0jFNtGAvCk
 IdXr8QFl82zi4eWzM/i2J7p6q0b3E+6mXj7PLqZbsKbxudmX1AwfkLYpKzM8sbrK2oTT
 ymagDztORTGzwqJ9ybnsMZfVwhv0E9B35puvnmshJLK/5CdKPiMQ42zYUC/wOmCBUWlC
 j0Aw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=APXcv3jh
Subject: Re: [Intel-wired-lan] [PATCH bpf-next v4 1/4] xsk: Add launch time
 hardware offload support to XDP Tx metadata
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

On 01/06, Song Yoong Siang wrote:
> Extend the XDP Tx metadata framework so that user can requests launch time
> hardware offload, where the Ethernet device will schedule the packet for
> transmission at a pre-determined time called launch time. The value of
> launch time is communicated from user space to Ethernet driver via
> launch_time field of struct xsk_tx_metadata.
> 
> Suggested-by: Stanislav Fomichev <sdf@google.com>
> Signed-off-by: Song Yoong Siang <yoong.siang.song@intel.com>
> ---
>  Documentation/netlink/specs/netdev.yaml      |  4 ++
>  Documentation/networking/xsk-tx-metadata.rst | 64 ++++++++++++++++++++
>  include/net/xdp_sock.h                       | 10 +++
>  include/net/xdp_sock_drv.h                   |  1 +
>  include/uapi/linux/if_xdp.h                  | 10 +++
>  include/uapi/linux/netdev.h                  |  3 +
>  net/core/netdev-genl.c                       |  2 +
>  net/xdp/xsk.c                                |  3 +
>  tools/include/uapi/linux/if_xdp.h            | 10 +++
>  tools/include/uapi/linux/netdev.h            |  3 +
>  10 files changed, 110 insertions(+)
> 
> diff --git a/Documentation/netlink/specs/netdev.yaml b/Documentation/netlink/specs/netdev.yaml
> index cbb544bd6c84..e59c8a14f7d1 100644
> --- a/Documentation/netlink/specs/netdev.yaml
> +++ b/Documentation/netlink/specs/netdev.yaml
> @@ -70,6 +70,10 @@ definitions:
>          name: tx-checksum
>          doc:
>            L3 checksum HW offload is supported by the driver.
> +      -
> +        name: tx-launch-time
> +        doc:
> +          Launch time HW offload is supported by the driver.
>    -
>      name: queue-type
>      type: enum
> diff --git a/Documentation/networking/xsk-tx-metadata.rst b/Documentation/networking/xsk-tx-metadata.rst
> index e76b0cfc32f7..3cec089747ce 100644
> --- a/Documentation/networking/xsk-tx-metadata.rst
> +++ b/Documentation/networking/xsk-tx-metadata.rst
> @@ -50,6 +50,10 @@ The flags field enables the particular offload:
>    checksum. ``csum_start`` specifies byte offset of where the checksumming
>    should start and ``csum_offset`` specifies byte offset where the
>    device should store the computed checksum.
> +- ``XDP_TXMD_FLAGS_LAUNCH_TIME``: requests the device to schedule the
> +  packet for transmission at a pre-determined time called launch time. The
> +  value of launch time is indicated by ``launch_time`` field of
> +  ``union xsk_tx_metadata``.
>  
>  Besides the flags above, in order to trigger the offloads, the first
>  packet's ``struct xdp_desc`` descriptor should set ``XDP_TX_METADATA``
> @@ -65,6 +69,65 @@ In this case, when running in ``XDK_COPY`` mode, the TX checksum
>  is calculated on the CPU. Do not enable this option in production because
>  it will negatively affect performance.
>  
> +Launch Time
> +===========
> +
> +The value of the requested launch time should be based on the device's PTP
> +Hardware Clock (PHC) to ensure accuracy. AF_XDP takes a different data path
> +compared to the ETF queuing discipline, which organizes packets and delays
> +their transmission. Instead, AF_XDP immediately hands off the packets to
> +the device driver without rearranging their order or holding them prior to
> +transmission. In scenarios where the launch time offload feature is
> +disabled, the device driver is expected to disregard the launch time
> +request. For correct interpretation and meaningful operation, the launch
> +time should never be set to a value larger than the farthest programmable
> +time in the future (the horizon). Different devices have different hardware
> +limitations on the launch time offload feature.
> +
> +stmmac driver
> +-------------
> +
> +For stmmac, TSO and launch time (TBS) features are mutually exclusive for
> +each individual Tx Queue. By default, the driver configures Tx Queue 0 to
> +support TSO and the rest of the Tx Queues to support TBS. The launch time
> +hardware offload feature can be enabled or disabled by using the tc-etf
> +command to call the driver's ndo_setup_tc() callback.
> +
> +The value of the launch time that is programmed in the Enhanced Normal
> +Transmit Descriptors is a 32-bit value, where the most significant 8 bits
> +represent the time in seconds and the remaining 24 bits represent the time
> +in 256 ns increments. The programmed launch time is compared against the
> +PTP time (bits[39:8]) and rolls over after 256 seconds. Therefore, the
> +horizon of the launch time for dwmac4 and dwxlgmac2 is 128 seconds in the
> +future.
> +
> +The stmmac driver maintains FIFO behavior and does not perform packet
> +reordering. This means that a packet with a launch time request will block
> +other packets in the same Tx Queue until it is transmitted.
> +
> +igc driver
> +----------
> +
> +For igc, all four Tx Queues support the launch time feature. The launch
> +time hardware offload feature can be enabled or disabled by using the
> +tc-etf command to call the driver's ndo_setup_tc() callback. When entering
> +TSN mode, the igc driver will reset the device and create a default Qbv
> +schedule with a 1-second cycle time, with all Tx Queues open at all times.
> +
> +The value of the launch time that is programmed in the Advanced Transmit
> +Context Descriptor is a relative offset to the starting time of the Qbv
> +transmission window of the queue. The Frst flag of the descriptor can be
> +set to schedule the packet for the next Qbv cycle. Therefore, the horizon
> +of the launch time for i225 and i226 is the ending time of the next cycle
> +of the Qbv transmission window of the queue. For example, when the Qbv
> +cycle time is set to 1 second, the horizon of the launch time ranges
> +from 1 second to 2 seconds, depending on where the Qbv cycle is currently
> +running.
> +
> +The igc driver maintains FIFO behavior and does not perform packet
> +reordering. This means that a packet with a launch time request will block
> +other packets in the same Tx Queue until it is transmitted.

Since two devices we initially support are using FIFO mode, should we more
explicitly target this case? Maybe even call netdev features
tx-launch-time-fifo? In the future, if/when we get support timing-wheel-like
queues, we can export another tx-launch-time-wheel?

It seems important for the userspace to know which mode it's running.
In a fifo mode, it might make sense to allocate separate queues
for scheduling things far into the future/etc.

Thoughts? No code changes required, just more explicitly state the
expectations.
