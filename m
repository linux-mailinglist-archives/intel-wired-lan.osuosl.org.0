Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 04D2CA0475B
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 Jan 2025 17:57:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 21B9C6078A;
	Tue,  7 Jan 2025 16:57:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CFbfz3ejH9Dk; Tue,  7 Jan 2025 16:57:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3740560794
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736269061;
	bh=Rb1pOcXu31lYFeGfpMgDjeg52e6mYQb5OHgfqtIS2po=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=UQTNc3mnsT1FhZPmLmwkRyNAZv/Jvej/+OgPfnO/DwU2g+PLE3IXdO67N0BhcvzRz
	 iiMUrk0Y2w9j0eu5sWgzqIODNLIkm/lCweSeNHYcDGki0j+MhxeoF/HZtwfiEVRBj6
	 nHFE5sgCBDf/WnvLfBfCTAnEq1wtv/+Boi3XQyEP0pQUzruEAXVGUKjXj6QFjlQ2IL
	 TDHz2Kds0xGUjfBUQxjkRx911qaijbf6yFylmpXZCqNRK0E68hxeT3KGlc0KEkCxGE
	 WmSTmPAYiFK5LuvmCjojJVAgbgZ9tRWfeIyikK+YNQubi9OatBlnHfgkruGsj/3O/o
	 TPUauzZj+ZeFA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3740560794;
	Tue,  7 Jan 2025 16:57:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 20374DB4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jan 2025 16:57:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E15EC404A3
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jan 2025 16:57:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SQ-M2e0bSvKi for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Jan 2025 16:57:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::62d; helo=mail-pl1-x62d.google.com;
 envelope-from=stfomichev@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B5BDC404A2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B5BDC404A2
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com
 [IPv6:2607:f8b0:4864:20::62d])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B5BDC404A2
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jan 2025 16:57:37 +0000 (UTC)
Received: by mail-pl1-x62d.google.com with SMTP id
 d9443c01a7336-2161eb95317so239431385ad.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 07 Jan 2025 08:57:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1736269057; x=1736873857;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Rb1pOcXu31lYFeGfpMgDjeg52e6mYQb5OHgfqtIS2po=;
 b=uWkZpgRNGG+YeFeAXkGCQfOSLHn3HXme7zT/5T3M4JmENJWjxCALLe6DT6wl7AlNEX
 u+tcr9Ah9PheMyGi2w+ejjilR5lAi3rAGCFrA6putjBIMmkqI/IYxcWSEgV4kvlDsL8i
 8ShgZ/iR9Hn+Z2ZGyMWiR06zncBk4kouxhQWtj0KqNriughmm6ooeLE6B7P5QSAG/xs4
 LBvWzcqp22aHuKsp8ryEP+OI66/odL0lQzna7zQfZhjbGm4SB3VdQveHgFZsUHCKlEV2
 j1G7tfqnsBI6iUKeaoIl9RGZI0YM3CrPlqPlF4/u+pwDEzFoeTVCjIXwy4ZmOpute9nZ
 0pqw==
X-Forwarded-Encrypted: i=1;
 AJvYcCXb0o40kDZrKohRNTAORu0dzzK7iY/ezJ6bMVw4s51C4jevxfJvLUpLXl4H/qLdwGgz3pEAvnDgSKIUwX1nLR8=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yyjv/8LMDCeSUTGdLkZNcAY/6nSwy+zCWimq4A4Pv20CvlpIMRP
 /fdYOKJ3rvhfUwwjVgdJMyuqeoPdtnMRv4cSKLTfpkkl9fUQemo=
X-Gm-Gg: ASbGncuAtenhJqG9+kbC+21IT7ZtG1Q7K2CFXvUVCvZXGwu8luOGcaoff5DK7NM1snP
 VEYar1yKkydtwo/NPk0StDRwt7WXrJYCoxUwEe6cFs7Vl6XK/WGtBu+O0AeOwYEJsfrf7f3Sd+G
 iLJmG1AxrvvjQ0rlgHhmWOUyFk8+3D6oJ0QKg0QlhaIsq6/BLemS8QTSzPmbpb8eL8Soydrx9qD
 pKT9SkCp6s3qxpkHmqCUs1Qq25qoWGDOaFvvNvWp5rB8g12KcXzxg2t
X-Google-Smtp-Source: AGHT+IFlhKI33ii68VDZqo5j2PH+n5VdBpF5kgNaO5PfE/xaemL0ooS2ho/W9ZBFXWggOucM2FsUEA==
X-Received: by 2002:a17:903:182:b0:216:1eb9:4a48 with SMTP id
 d9443c01a7336-219e6f289a0mr710448725ad.56.1736269056620; 
 Tue, 07 Jan 2025 08:57:36 -0800 (PST)
Received: from localhost ([2601:646:9e00:f56e:123b:cea3:439a:b3e3])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-219dc962d0asm314014085ad.53.2025.01.07.08.57.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Jan 2025 08:57:36 -0800 (PST)
Date: Tue, 7 Jan 2025 08:57:35 -0800
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
Message-ID: <Z31c_3j9MEP7Z3bd@mini-arch>
References: <20250106135638.9719-1-yoong.siang.song@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20250106135638.9719-1-yoong.siang.song@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1736269057; x=1736873857; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=Rb1pOcXu31lYFeGfpMgDjeg52e6mYQb5OHgfqtIS2po=;
 b=Kv4zNkO6FReKBSd+mBeOumIN7lTOfymsdAu4sAF+jVS9k6rTQ/2m773/g/i9re0vCg
 4cyl0EgsmLJpWDMa8zPyXfthLbbfjIMx7RMJHjlUXmBMkt3xrHCUzZaJxOUHOYep1YMV
 aKpAOB10xz8f4Bel62jC+2o2vID8ogZTsQ/FG59odQWXCTB6Iif9S/tQ+OAYI2KyLSBP
 GB8wdX1lN6p1CUfYBamijv0JSLfcJfI+ISwSCDL279GafXAFZ5FzyINLLRpDLVuwaXed
 Hu2/WjArRqlGmoeJOYqsgYumbsV35NPW7NlDSxeGP62GfHPVRGR9NBNYPJJouOUsxo1T
 7XOQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=Kv4zNkO6
Subject: Re: [Intel-wired-lan] [PATCH bpf-next v4 2/4] selftests/bpf: Add
 Launch Time request to xdp_hw_metadata
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
> Add Launch Time hw offload request to xdp_hw_metadata. User can configure
> the delta of launch time to HW RX-time by using "-l" argument. The default
> delta is 100,000,000 nanosecond.
> 
> Signed-off-by: Song Yoong Siang <yoong.siang.song@intel.com>
> ---
>  tools/testing/selftests/bpf/xdp_hw_metadata.c | 30 +++++++++++++++++--
>  1 file changed, 27 insertions(+), 3 deletions(-)
> 
> diff --git a/tools/testing/selftests/bpf/xdp_hw_metadata.c b/tools/testing/selftests/bpf/xdp_hw_metadata.c
> index 6f7b15d6c6ed..795c1d14e02d 100644
> --- a/tools/testing/selftests/bpf/xdp_hw_metadata.c
> +++ b/tools/testing/selftests/bpf/xdp_hw_metadata.c
> @@ -13,6 +13,7 @@
>   * - UDP 9091 packets trigger TX reply
>   * - TX HW timestamp is requested and reported back upon completion
>   * - TX checksum is requested
> + * - TX launch time HW offload is requested for transmission
>   */
>  
>  #include <test_progs.h>
> @@ -64,6 +65,8 @@ int rxq;
>  bool skip_tx;
>  __u64 last_hw_rx_timestamp;
>  __u64 last_xdp_rx_timestamp;
> +__u64 last_launch_time;
> +__u64 launch_time_delta_to_hw_rx_timestamp = 100000000; /* 0.1 second */
>  
>  void test__fail(void) { /* for network_helpers.c */ }
>  
> @@ -298,6 +301,8 @@ static bool complete_tx(struct xsk *xsk, clockid_t clock_id)
>  	if (meta->completion.tx_timestamp) {
>  		__u64 ref_tstamp = gettime(clock_id);
>  
> +		print_tstamp_delta("HW Launch-time", "HW TX-complete-time",
> +				   last_launch_time, meta->completion.tx_timestamp);
>  		print_tstamp_delta("HW TX-complete-time", "User TX-complete-time",
>  				   meta->completion.tx_timestamp, ref_tstamp);
>  		print_tstamp_delta("XDP RX-time", "User TX-complete-time",
> @@ -395,6 +400,14 @@ static void ping_pong(struct xsk *xsk, void *rx_packet, clockid_t clock_id)
>  	       xsk, ntohs(udph->check), ntohs(want_csum),
>  	       meta->request.csum_start, meta->request.csum_offset);
>  
> +	/* Set the value of launch time */
> +	meta->flags |= XDP_TXMD_FLAGS_LAUNCH_TIME;
> +	meta->request.launch_time = last_hw_rx_timestamp +
> +				    launch_time_delta_to_hw_rx_timestamp;
> +	last_launch_time = meta->request.launch_time;
> +	print_tstamp_delta("HW RX-time", "HW Launch-time", last_hw_rx_timestamp,
> +			   meta->request.launch_time);
> +
>  	memcpy(data, rx_packet, len); /* don't share umem chunk for simplicity */
>  	tx_desc->options |= XDP_TX_METADATA;
>  	tx_desc->len = len;
> @@ -402,10 +415,14 @@ static void ping_pong(struct xsk *xsk, void *rx_packet, clockid_t clock_id)
>  	xsk_ring_prod__submit(&xsk->tx, 1);
>  }
>  
> +#define SLEEP_PER_ITERATION_IN_US 10
> +#define SLEEP_PER_ITERATION_IN_NS (SLEEP_PER_ITERATION_IN_US * 1000)
> +#define MAX_ITERATION(x) (((x) / SLEEP_PER_ITERATION_IN_NS) + 500)
>  static int verify_metadata(struct xsk *rx_xsk, int rxq, int server_fd, clockid_t clock_id)
>  {
>  	const struct xdp_desc *rx_desc;
>  	struct pollfd fds[rxq + 1];
> +	int max_iterations;
>  	__u64 comp_addr;
>  	__u64 addr;
>  	__u32 idx = 0;
> @@ -418,6 +435,9 @@ static int verify_metadata(struct xsk *rx_xsk, int rxq, int server_fd, clockid_t
>  		fds[i].revents = 0;
>  	}
>  
> +	/* Calculate max iterations to wait for transmit completion */
> +	max_iterations = MAX_ITERATION(launch_time_delta_to_hw_rx_timestamp);
> +
>  	fds[rxq].fd = server_fd;
>  	fds[rxq].events = POLLIN;
>  	fds[rxq].revents = 0;
> @@ -477,10 +497,10 @@ static int verify_metadata(struct xsk *rx_xsk, int rxq, int server_fd, clockid_t
>  					if (ret)
>  						printf("kick_tx ret=%d\n", ret);
>  

[..]

> -					for (int j = 0; j < 500; j++) {
> +					for (int j = 0; j < max_iterations; j++) {
>  						if (complete_tx(xsk, clock_id))
>  							break;
> -						usleep(10);
> +						usleep(SLEEP_PER_ITERATION_IN_US);

nit: instead of doing MAX_ITERATION/max_iterations, can we simplify this
to the following?

static u64 now(void)
{
	clock_gettime(...);
	return ts.tv_sec * NSEC_PER_SEC + ts.tv_nsec;
}

/* wait 5 seconds + cover launch time */
deadline = now() + 5 * NSEC_PER_SEC + launch_time_delta_to_hw_rx_timestamp;
while (true) {
	if (complete_tx())
		break;
	if (now() >= deadline)
		break;
	usleep(10);
}

It is a bit more readable than converting time to wait to the
iterations..
