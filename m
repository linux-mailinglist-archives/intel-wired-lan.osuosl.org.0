Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FFA6686EFB
	for <lists+intel-wired-lan@lfdr.de>; Wed,  1 Feb 2023 20:31:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 997E240B5C;
	Wed,  1 Feb 2023 19:31:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 997E240B5C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675279902;
	bh=Tc30BJ88e8Pasap1oFSUklGb5YO/RgAp4XvlK0vWvCI=;
	h=Date:In-Reply-To:References:From:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=y8prWCxXwWywcSLZlSBGmL+gwEjuu3eCn8ebVm82ER7PEN/4WT8j37dUHZ1r3Vd48
	 fBBvVMGr6eXgt8/QiIYtbiaLlD1IqCnBLIvUthRn/zjxqhpQqgwKGvvXlm2fjSOr5i
	 LeK+qIGweYvuukbd3Cw0v7uPsE2SxMp3724HV9pNtEo7+BLFAdUKIFjItnyNepJ0be
	 MT7vivp8jfZDjimAUb+gl+QkgpXuIF1zDU3uKfKIGhxZl5yGuxIezvRQL9cAkSy3Xh
	 ZaFLqiRw9d55uVUj7pIZuUB5ZUvbbiOphsTwykMwPDoidfxap9H3qMOdb6KVU4HzIg
	 59kO1+Fz47yHA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id J9bAjV3Cr-kN; Wed,  1 Feb 2023 19:31:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3FFF240A09;
	Wed,  1 Feb 2023 19:31:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3FFF240A09
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A35D51BF31A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Feb 2023 19:31:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 87AC981231
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Feb 2023 19:31:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 87AC981231
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4XafYwZFdn0u for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Feb 2023 19:31:32 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 369C381220
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com
 [IPv6:2607:f8b0:4864:20::b49])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 369C381220
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Feb 2023 19:31:32 +0000 (UTC)
Received: by mail-yb1-xb49.google.com with SMTP id
 w70-20020a25df49000000b00803e799d7b1so20919149ybg.10
 for <intel-wired-lan@lists.osuosl.org>; Wed, 01 Feb 2023 11:31:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=PXZLj3/+y2gVcDITQkL1VvtPzuGhPWQvnXDD3BU+ss8=;
 b=Ba2gSfLQnOybNgvXC35ao0UmDwUr79M88tGc9JV2o6n9YyTJVF6eFGCrF4lNUWF6HH
 xdUyGDzH7/y/i25Xw2JtpeQa8/yxjoPr4E0VXm/339Wt8TcpUkH20ysK8pr71SNgk3Rm
 1tMw+82qDiT1FGb1AS86otdZMS9WwRqcUN+oqaOrUeh2h6pave+XcJzcUthEBTXdkPMg
 6WMw34L/1aITtSd9L/Tx0exB7XuKqtmDXdKT6qxX5r2cPMPCGhR7NOkz5iAf6VzzR9Hy
 6VPl2zavy5XNJb5/HWxOo46Bw1XzJMi/SMg0FzTvxNIp94Ov1oP5xpT3ZdlHhA20Iscj
 5n4A==
X-Gm-Message-State: AO0yUKWmjCdwKz19jfUp4TgXRl6iOSjjCKKVTgjr0oTfyaIdXNA6FzQ6
 BhmFQLbA42FQfaD6W4X5t1NsSRo=
X-Google-Smtp-Source: AK7set+w9fWfexsjTRpaJMDjQvPn7OzHfvyiL7dkJyeR1KaOUZ4QL9bIKw+CbI2f1znCvCSxtLA02Bc=
X-Received: from sdf.c.googlers.com ([fda3:e722:ac3:cc00:7f:e700:c0a8:5935])
 (user=sdf job=sendgmr) by 2002:a25:ac14:0:b0:7f4:a52d:ae13 with SMTP id
 w20-20020a25ac14000000b007f4a52dae13mr450916ybi.168.1675279891008; Wed, 01
 Feb 2023 11:31:31 -0800 (PST)
Date: Wed, 1 Feb 2023 11:31:29 -0800
In-Reply-To: <7c1af8e7e6ef0614cf32fa9e6bdaa2d8d605f859.1675245258.git.lorenzo@kernel.org>
Mime-Version: 1.0
References: <cover.1675245257.git.lorenzo@kernel.org>
 <7c1af8e7e6ef0614cf32fa9e6bdaa2d8d605f859.1675245258.git.lorenzo@kernel.org>
Message-ID: <Y9q+EZKMHOh78dFK@google.com>
From: Stanislav Fomichev <sdf@google.com>
To: Lorenzo Bianconi <lorenzo@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20210112;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:from:to:cc:subject:date:message-id:reply-to;
 bh=PXZLj3/+y2gVcDITQkL1VvtPzuGhPWQvnXDD3BU+ss8=;
 b=fNFO+9XCdRDGAGxPDIKeIdtQ62v9tlA09SmXTv78EMVgc1wBcOPY8G/3Ya+JD3/Flg
 pCUe7YSIsTXwTQ7DCWEnyC3dHFTm2hyysUPuFrusdYsll0vEA+iRkWbTBiS/wA6LHyvt
 ykHuRf0dQBGtDKqksXnPqK1bq2oEzfkogUgOM5odPqs/W43hcjtIApdKzIb7BpExmOll
 EQjULX4QUcqmrJ7axOL17pMhEOpCUR0ImaofVAYkLdhSFBja1ssEhmUwZnH7dxnqFdJ4
 qyze9kF720GqnVSm6cF2furK4UpLkTxEw3kTJndWayM+gQFnyo2EurKV0bwly6OSw6F1
 cPfw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20210112 header.b=fNFO+9XC
Subject: Re: [Intel-wired-lan] [PATCH v5 bpf-next 8/8] selftests/bpf:
 introduce XDP compliance test tool
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
Cc: mst@redhat.com, vladimir.oltean@nxp.com, ast@kernel.org,
 edumazet@google.com, anthony.l.nguyen@intel.com, gerhard@engleder-embedded.com,
 daniel@iogearbox.net, andrii@kernel.org, intel-wired-lan@lists.osuosl.org,
 simon.horman@corigine.com, kuba@kernel.org, pabeni@redhat.com,
 aelior@marvell.com, hawk@kernel.org, christophe.jaillet@wanadoo.fr,
 memxor@gmail.com, john@phrozen.org, bjorn@kernel.org, bpf@vger.kernel.org,
 magnus.karlsson@intel.com, leon@kernel.org, netdev@vger.kernel.org,
 toke@redhat.com, martin.lau@linux.dev, ecree.xilinx@gmail.com,
 alardam@gmail.com, gospo@broadcom.com, saeedm@nvidia.com, davem@davemloft.net,
 nbd@nbd.name
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"; DelSp="yes"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 02/01, Lorenzo Bianconi wrote:
> Introduce xdp_features tool in order to test XDP features supported by
> the NIC and match them against advertised ones.
> In order to test supported/advertised XDP features, xdp_features must
> run on the Device Under Test (DUT) and on a Tester device.
> xdp_features opens a control TCP channel between DUT and Tester devices
> to send control commands from Tester to the DUT and a UDP data channel
> where the Tester sends UDP 'echo' packets and the DUT is expected to
> reply back with the same packet. DUT installs multiple XDP programs on the
> NIC to test XDP capabilities and reports back to the Tester some XDP  
> stats.
> Currently xdp_features supports the following XDP features:
> - XDP_DROP
> - XDP_ABORTED
> - XDP_PASS
> - XDP_TX
> - XDP_REDIRECT
> - XDP_NDO_XMIT

> Co-developed-by: Kumar Kartikeya Dwivedi <memxor@gmail.com>
> Signed-off-by: Kumar Kartikeya Dwivedi <memxor@gmail.com>
> Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>

Thank you for doing the changes!

Acked-by: Stanislav Fomichev <sdf@google.com>

> ---
>   tools/testing/selftests/bpf/.gitignore        |   1 +
>   tools/testing/selftests/bpf/Makefile          |  11 +-
>   .../selftests/bpf/progs/xdp_features.c        | 269 +++++++
>   .../selftests/bpf/test_xdp_features.sh        | 107 +++
>   tools/testing/selftests/bpf/xdp_features.c    | 699 ++++++++++++++++++
>   tools/testing/selftests/bpf/xdp_features.h    |  20 +
>   6 files changed, 1105 insertions(+), 2 deletions(-)
>   create mode 100644 tools/testing/selftests/bpf/progs/xdp_features.c
>   create mode 100755 tools/testing/selftests/bpf/test_xdp_features.sh
>   create mode 100644 tools/testing/selftests/bpf/xdp_features.c
>   create mode 100644 tools/testing/selftests/bpf/xdp_features.h

> diff --git a/tools/testing/selftests/bpf/.gitignore  
> b/tools/testing/selftests/bpf/.gitignore
> index 4aa5bba956ff..116fecf80ca1 100644
> --- a/tools/testing/selftests/bpf/.gitignore
> +++ b/tools/testing/selftests/bpf/.gitignore
> @@ -48,3 +48,4 @@ xskxceiver
>   xdp_redirect_multi
>   xdp_synproxy
>   xdp_hw_metadata
> +xdp_features
> diff --git a/tools/testing/selftests/bpf/Makefile  
> b/tools/testing/selftests/bpf/Makefile
> index e79039726173..b2eb3201b85a 100644
> --- a/tools/testing/selftests/bpf/Makefile
> +++ b/tools/testing/selftests/bpf/Makefile
> @@ -73,7 +73,8 @@ TEST_PROGS := test_kmod.sh \
>   	test_bpftool.sh \
>   	test_bpftool_metadata.sh \
>   	test_doc_build.sh \
> -	test_xsk.sh
> +	test_xsk.sh \
> +	test_xdp_features.sh

>   TEST_PROGS_EXTENDED := with_addr.sh \
>   	with_tunnels.sh ima_setup.sh verify_sig_setup.sh \
> @@ -83,7 +84,8 @@ TEST_PROGS_EXTENDED := with_addr.sh \
>   TEST_GEN_PROGS_EXTENDED = test_sock_addr test_skb_cgroup_id_user \
>   	flow_dissector_load test_flow_dissector test_tcp_check_syncookie_user \
>   	test_lirc_mode2_user xdping test_cpp runqslower bench bpf_testmod.ko \
> -	xskxceiver xdp_redirect_multi xdp_synproxy veristat xdp_hw_metadata
> +	xskxceiver xdp_redirect_multi xdp_synproxy veristat xdp_hw_metadata \
> +	xdp_features

>   TEST_CUSTOM_PROGS = $(OUTPUT)/urandom_read $(OUTPUT)/sign-file
>   TEST_GEN_FILES += liburandom_read.so
> @@ -385,6 +387,7 @@ test_subskeleton_lib.skel.h-deps :=  
> test_subskeleton_lib2.bpf.o test_subskeleton
>   test_usdt.skel.h-deps := test_usdt.bpf.o test_usdt_multispec.bpf.o
>   xsk_xdp_progs.skel.h-deps := xsk_xdp_progs.bpf.o
>   xdp_hw_metadata.skel.h-deps := xdp_hw_metadata.bpf.o
> +xdp_features.skel.h-deps := xdp_features.bpf.o

>   LINKED_BPF_SRCS := $(patsubst %.bpf.o,%.c,$(foreach  
> skel,$(LINKED_SKELS),$($(skel)-deps)))

> @@ -587,6 +590,10 @@ $(OUTPUT)/xdp_hw_metadata: xdp_hw_metadata.c  
> $(OUTPUT)/network_helpers.o $(OUTPU
>   	$(call msg,BINARY,,$@)
>   	$(Q)$(CC) $(CFLAGS) $(filter %.a %.o %.c,$^) $(LDLIBS) -o $@

> +$(OUTPUT)/xdp_features: xdp_features.c $(OUTPUT)/network_helpers.o  
> $(OUTPUT)/xdp_features.skel.h | $(OUTPUT)
> +	$(call msg,BINARY,,$@)
> +	$(Q)$(CC) $(CFLAGS) $(filter %.a %.o %.c,$^) $(LDLIBS) -o $@
> +
>   # Make sure we are able to include and link libbpf against c++.
>   $(OUTPUT)/test_cpp: test_cpp.cpp $(OUTPUT)/test_core_extern.skel.h  
> $(BPFOBJ)
>   	$(call msg,CXX,,$@)
> diff --git a/tools/testing/selftests/bpf/progs/xdp_features.c  
> b/tools/testing/selftests/bpf/progs/xdp_features.c
> new file mode 100644
> index 000000000000..87c247d56f72
> --- /dev/null
> +++ b/tools/testing/selftests/bpf/progs/xdp_features.c
> @@ -0,0 +1,269 @@
> +// SPDX-License-Identifier: GPL-2.0
> +
> +#include <stdbool.h>
> +#include <linux/bpf.h>
> +#include <linux/netdev.h>
> +#include <bpf/bpf_helpers.h>
> +#include <bpf/bpf_endian.h>
> +#include <bpf/bpf_tracing.h>
> +#include <linux/if_ether.h>
> +#include <linux/ip.h>
> +#include <linux/ipv6.h>
> +#include <linux/in.h>
> +#include <linux/in6.h>
> +#include <linux/udp.h>
> +#include <asm-generic/errno-base.h>
> +
> +#include "xdp_features.h"
> +
> +#define ipv6_addr_equal(a, b)	((a).s6_addr32[0] == (b).s6_addr32[0] &&	\
> +				 (a).s6_addr32[1] == (b).s6_addr32[1] &&	\
> +				 (a).s6_addr32[2] == (b).s6_addr32[2] &&	\
> +				 (a).s6_addr32[3] == (b).s6_addr32[3])
> +
> +struct net_device;
> +struct bpf_prog;
> +
> +struct xdp_cpumap_stats {
> +	unsigned int redirect;
> +	unsigned int pass;
> +	unsigned int drop;
> +};
> +
> +struct {
> +	__uint(type, BPF_MAP_TYPE_ARRAY);
> +	__type(key, __u32);
> +	__type(value, __u32);
> +	__uint(max_entries, 1);
> +} stats SEC(".maps");
> +
> +struct {
> +	__uint(type, BPF_MAP_TYPE_ARRAY);
> +	__type(key, __u32);
> +	__type(value, __u32);
> +	__uint(max_entries, 1);
> +} dut_stats SEC(".maps");
> +
> +struct {
> +	__uint(type, BPF_MAP_TYPE_CPUMAP);
> +	__uint(key_size, sizeof(__u32));
> +	__uint(value_size, sizeof(struct bpf_cpumap_val));
> +	__uint(max_entries, 1);
> +} cpu_map SEC(".maps");
> +
> +struct {
> +	__uint(type, BPF_MAP_TYPE_DEVMAP);
> +	__uint(key_size, sizeof(__u32));
> +	__uint(value_size, sizeof(struct bpf_devmap_val));
> +	__uint(max_entries, 1);
> +} dev_map SEC(".maps");
> +
> +const volatile struct in6_addr tester_addr;
> +const volatile struct in6_addr dut_addr;
> +
> +static __always_inline int
> +xdp_process_echo_packet(struct xdp_md *xdp, bool dut)
> +{
> +	void *data_end = (void *)(long)xdp->data_end;
> +	void *data = (void *)(long)xdp->data;
> +	struct ethhdr *eh = data;
> +	struct tlv_hdr *tlv;
> +	struct udphdr *uh;
> +	__be16 port;
> +	__u8 *cmd;
> +
> +	if (eh + 1 > (struct ethhdr *)data_end)
> +		return -EINVAL;
> +
> +	if (eh->h_proto == bpf_htons(ETH_P_IP)) {
> +		struct iphdr *ih = (struct iphdr *)(eh + 1);
> +		__be32 saddr = dut ? tester_addr.s6_addr32[3]
> +				   : dut_addr.s6_addr32[3];
> +		__be32 daddr = dut ? dut_addr.s6_addr32[3]
> +				   : tester_addr.s6_addr32[3];
> +
> +		ih = (struct iphdr *)(eh + 1);
> +		if (ih + 1 > (struct iphdr *)data_end)
> +			return -EINVAL;
> +
> +		if (saddr != ih->saddr)
> +			return -EINVAL;
> +
> +		if (daddr != ih->daddr)
> +			return -EINVAL;
> +
> +		if (ih->protocol != IPPROTO_UDP)
> +			return -EINVAL;
> +
> +		uh = (struct udphdr *)(ih + 1);
> +	} else if (eh->h_proto == bpf_htons(ETH_P_IPV6)) {
> +		struct in6_addr saddr = dut ? tester_addr : dut_addr;
> +		struct in6_addr daddr = dut ? dut_addr : tester_addr;
> +		struct ipv6hdr *ih6 = (struct ipv6hdr *)(eh + 1);
> +
> +		if (ih6 + 1 > (struct ipv6hdr *)data_end)
> +			return -EINVAL;
> +
> +		if (!ipv6_addr_equal(saddr, ih6->saddr))
> +			return -EINVAL;
> +
> +		if (!ipv6_addr_equal(daddr, ih6->daddr))
> +			return -EINVAL;
> +
> +		if (ih6->nexthdr != IPPROTO_UDP)
> +			return -EINVAL;
> +
> +		uh = (struct udphdr *)(ih6 + 1);
> +	} else {
> +		return -EINVAL;
> +	}
> +
> +	if (uh + 1 > (struct udphdr *)data_end)
> +		return -EINVAL;
> +
> +	port = dut ? uh->dest : uh->source;
> +	if (port != bpf_htons(DUT_ECHO_PORT))
> +		return -EINVAL;
> +
> +	tlv = (struct tlv_hdr *)(uh + 1);
> +	if (tlv + 1 > data_end)
> +		return -EINVAL;
> +
> +	return bpf_htons(tlv->type) == CMD_ECHO ? 0 : -EINVAL;
> +}
> +
> +static __always_inline int
> +xdp_update_stats(struct xdp_md *xdp, bool tx, bool dut)
> +{
> +	__u32 *val, key = 0;
> +
> +	if (xdp_process_echo_packet(xdp, tx))
> +		return -EINVAL;
> +
> +	if (dut)
> +		val = bpf_map_lookup_elem(&dut_stats, &key);
> +	else
> +		val = bpf_map_lookup_elem(&stats, &key);
> +
> +	if (val)
> +		__sync_add_and_fetch(val, 1);
> +
> +	return 0;
> +}
> +
> +/* Tester */
> +
> +SEC("xdp")
> +int xdp_tester_check_tx(struct xdp_md *xdp)
> +{
> +	xdp_update_stats(xdp, true, false);
> +
> +	return XDP_PASS;
> +}
> +
> +SEC("xdp")
> +int xdp_tester_check_rx(struct xdp_md *xdp)
> +{
> +	xdp_update_stats(xdp, false, false);
> +
> +	return XDP_PASS;
> +}
> +
> +/* DUT */
> +
> +SEC("xdp")
> +int xdp_do_pass(struct xdp_md *xdp)
> +{
> +	xdp_update_stats(xdp, true, true);
> +
> +	return XDP_PASS;
> +}
> +
> +SEC("xdp")
> +int xdp_do_drop(struct xdp_md *xdp)
> +{
> +	if (xdp_update_stats(xdp, true, true))
> +		return XDP_PASS;
> +
> +	return XDP_DROP;
> +}
> +
> +SEC("xdp")
> +int xdp_do_aborted(struct xdp_md *xdp)
> +{
> +	if (xdp_process_echo_packet(xdp, true))
> +		return XDP_PASS;
> +
> +	return XDP_ABORTED;
> +}
> +
> +SEC("xdp")
> +int xdp_do_tx(struct xdp_md *xdp)
> +{
> +	void *data = (void *)(long)xdp->data;
> +	struct ethhdr *eh = data;
> +	__u8 tmp_mac[ETH_ALEN];
> +
> +	if (xdp_update_stats(xdp, true, true))
> +		return XDP_PASS;
> +
> +	__builtin_memcpy(tmp_mac, eh->h_source, ETH_ALEN);
> +	__builtin_memcpy(eh->h_source, eh->h_dest, ETH_ALEN);
> +	__builtin_memcpy(eh->h_dest, tmp_mac, ETH_ALEN);
> +
> +	return XDP_TX;
> +}
> +
> +SEC("xdp")
> +int xdp_do_redirect(struct xdp_md *xdp)
> +{
> +	if (xdp_process_echo_packet(xdp, true))
> +		return XDP_PASS;
> +
> +	return bpf_redirect_map(&cpu_map, 0, 0);
> +}
> +
> +SEC("tp_btf/xdp_exception")
> +int BPF_PROG(xdp_exception, const struct net_device *dev,
> +	     const struct bpf_prog *xdp, __u32 act)
> +{
> +	__u32 *val, key = 0;
> +
> +	val = bpf_map_lookup_elem(&dut_stats, &key);
> +	if (val)
> +		__sync_add_and_fetch(val, 1);
> +
> +	return 0;
> +}
> +
> +SEC("tp_btf/xdp_cpumap_kthread")
> +int BPF_PROG(tp_xdp_cpumap_kthread, int map_id, unsigned int processed,
> +	     unsigned int drops, int sched, struct xdp_cpumap_stats *xdp_stats)
> +{
> +	__u32 *val, key = 0;
> +
> +	val = bpf_map_lookup_elem(&dut_stats, &key);
> +	if (val)
> +		__sync_add_and_fetch(val, 1);
> +
> +	return 0;
> +}
> +
> +SEC("xdp/cpumap")
> +int xdp_do_redirect_cpumap(struct xdp_md *xdp)
> +{
> +	void *data = (void *)(long)xdp->data;
> +	struct ethhdr *eh = data;
> +	__u8 tmp_mac[ETH_ALEN];
> +
> +	if (xdp_process_echo_packet(xdp, true))
> +		return XDP_PASS;
> +
> +	__builtin_memcpy(tmp_mac, eh->h_source, ETH_ALEN);
> +	__builtin_memcpy(eh->h_source, eh->h_dest, ETH_ALEN);
> +	__builtin_memcpy(eh->h_dest, tmp_mac, ETH_ALEN);
> +
> +	return bpf_redirect_map(&dev_map, 0, 0);
> +}
> +
> +char _license[] SEC("license") = "GPL";
> diff --git a/tools/testing/selftests/bpf/test_xdp_features.sh  
> b/tools/testing/selftests/bpf/test_xdp_features.sh
> new file mode 100755
> index 000000000000..0aa71c4455c0
> --- /dev/null
> +++ b/tools/testing/selftests/bpf/test_xdp_features.sh
> @@ -0,0 +1,107 @@
> +#!/bin/bash
> +# SPDX-License-Identifier: GPL-2.0
> +
> +readonly NS="ns1-$(mktemp -u XXXXXX)"
> +readonly V0_IP4=10.10.0.11
> +readonly V1_IP4=10.10.0.1
> +readonly V0_IP6=2001:db8::11
> +readonly V1_IP6=2001:db8::1
> +
> +ret=1
> +
> +setup() {
> +	{
> +		ip netns add ${NS}
> +
> +		ip link add v1 type veth peer name v0 netns ${NS}
> +
> +		ip link set v1 up
> +		ip addr add $V1_IP4/24 dev v1
> +		ip addr add $V1_IP6/64 nodad dev v1
> +		ip -n ${NS} link set dev v0 up
> +		ip -n ${NS} addr add $V0_IP4/24 dev v0
> +		ip -n ${NS} addr add $V0_IP6/64 nodad dev v0
> +
> +		# Enable XDP mode and disable checksum offload
> +		ethtool -K v1 gro on
> +		ethtool -K v1 tx-checksumming off
> +		ip netns exec ${NS} ethtool -K v0 gro on
> +		ip netns exec ${NS} ethtool -K v0 tx-checksumming off
> +	} > /dev/null 2>&1
> +}
> +
> +cleanup() {
> +	ip link del v1 2> /dev/null
> +	ip netns del ${NS} 2> /dev/null
> +	[ "$(pidof xdp_features)" = "" ] || kill $(pidof xdp_features) 2>  
> /dev/null
> +}
> +
> +wait_for_dut_server() {
> +	while sleep 1; do
> +		ss -tlp | grep -q xdp_features
> +		[ $? -eq 0 ] && break
> +	done
> +}
> +
> +test_xdp_features() {
> +	setup
> +
> +	## XDP_PASS
> +	./xdp_features -f XDP_PASS -D $V1_IP6 -T $V0_IP6 v1 &
> +	wait_for_dut_server
> +	ip netns exec ${NS} ./xdp_features -t -f XDP_PASS \
> +					   -D $V1_IP6 -C $V1_IP6 \
> +					   -T $V0_IP6 v0
> +	[ $? -ne 0 ] && exit
> +
> +	## XDP_DROP
> +	./xdp_features -f XDP_DROP -D ::ffff:$V1_IP4 -T ::ffff:$V0_IP4 v1 &
> +	wait_for_dut_server
> +	ip netns exec ${NS} ./xdp_features -t -f XDP_DROP \
> +					   -D ::ffff:$V1_IP4 \
> +					   -C ::ffff:$V1_IP4 \
> +					   -T ::ffff:$V0_IP4 v0
> +	[ $? -ne 0 ] && exit
> +
> +	## XDP_ABORTED
> +	./xdp_features -f XDP_ABORTED -D $V1_IP6 -T $V0_IP6 v1 &
> +	wait_for_dut_server
> +	ip netns exec ${NS} ./xdp_features -t -f XDP_ABORTED \
> +					   -D $V1_IP6 -C $V1_IP6 \
> +					   -T $V0_IP6 v0
> +	[ $? -ne 0 ] && exit
> +
> +	## XDP_TX
> +	./xdp_features -f XDP_TX -D ::ffff:$V1_IP4 -T ::ffff:$V0_IP4 v1 &
> +	wait_for_dut_server
> +	ip netns exec ${NS} ./xdp_features -t -f XDP_TX \
> +					   -D ::ffff:$V1_IP4 \
> +					   -C ::ffff:$V1_IP4 \
> +					   -T ::ffff:$V0_IP4 v0
> +	[ $? -ne 0 ] && exit
> +
> +	## XDP_REDIRECT
> +	./xdp_features -f XDP_REDIRECT -D $V1_IP6 -T $V0_IP6 v1 &
> +	wait_for_dut_server
> +	ip netns exec ${NS} ./xdp_features -t -f XDP_REDIRECT \
> +					   -D $V1_IP6 -C $V1_IP6 \
> +					   -T $V0_IP6 v0
> +	[ $? -ne 0 ] && exit
> +
> +	## XDP_NDO_XMIT
> +	./xdp_features -f XDP_NDO_XMIT -D ::ffff:$V1_IP4 -T ::ffff:$V0_IP4 v1 &
> +	wait_for_dut_server
> +	ip netns exec ${NS} ./xdp_features -t -f XDP_NDO_XMIT \
> +					   -D ::ffff:$V1_IP4 \
> +					   -C ::ffff:$V1_IP4 \
> +					   -T ::ffff:$V0_IP4 v0
> +	ret=$?
> +	cleanup
> +}
> +
> +set -e
> +trap cleanup 2 3 6 9
> +
> +test_xdp_features
> +
> +exit $ret
> diff --git a/tools/testing/selftests/bpf/xdp_features.c  
> b/tools/testing/selftests/bpf/xdp_features.c
> new file mode 100644
> index 000000000000..10fad1243573
> --- /dev/null
> +++ b/tools/testing/selftests/bpf/xdp_features.c
> @@ -0,0 +1,699 @@
> +// SPDX-License-Identifier: GPL-2.0
> +#include <uapi/linux/bpf.h>
> +#include <uapi/linux/netdev.h>
> +#include <linux/if_link.h>
> +#include <signal.h>
> +#include <argp.h>
> +#include <net/if.h>
> +#include <sys/socket.h>
> +#include <netinet/in.h>
> +#include <netinet/tcp.h>
> +#include <unistd.h>
> +#include <arpa/inet.h>
> +#include <bpf/bpf.h>
> +#include <bpf/libbpf.h>
> +#include <pthread.h>
> +
> +#include <network_helpers.h>
> +
> +#include "xdp_features.skel.h"
> +#include "xdp_features.h"
> +
> +#define RED(str)	"\033[0;31m" str "\033[0m"
> +#define GREEN(str)	"\033[0;32m" str "\033[0m"
> +#define YELLOW(str)	"\033[0;33m" str "\033[0m"
> +
> +static struct env {
> +	bool verbosity;
> +	int ifindex;
> +	bool is_tester;
> +	struct {
> +		enum netdev_xdp_act drv_feature;
> +		enum xdp_action action;
> +	} feature;
> +	struct sockaddr_storage dut_ctrl_addr;
> +	struct sockaddr_storage dut_addr;
> +	struct sockaddr_storage tester_addr;
> +} env;
> +
> +#define BUFSIZE		128
> +
> +void test__fail(void) { /* for network_helpers.c */ }
> +
> +static int libbpf_print_fn(enum libbpf_print_level level,
> +			   const char *format, va_list args)
> +{
> +	if (level == LIBBPF_DEBUG && !env.verbosity)
> +		return 0;
> +	return vfprintf(stderr, format, args);
> +}
> +
> +static volatile bool exiting;
> +
> +static void sig_handler(int sig)
> +{
> +	exiting = true;
> +}
> +
> +const char *argp_program_version = "xdp-features 0.0";
> +const char argp_program_doc[] =
> +"XDP features detecion application.\n"
> +"\n"
> +"XDP features application checks the XDP advertised features match  
> detected ones.\n"
> +"\n"
> +"USAGE: ./xdp-features [-vt] [-f <xdp-feature>] [-D <dut-data-ip>] [-T  
> <tester-data-ip>] [-C <dut-ctrl-ip>] <iface-name>\n"
> +"\n"
> +"dut-data-ip, tester-data-ip, dut-ctrl-ip: IPv6 or IPv4-mapped-IPv6  
> addresses;\n"
> +"\n"
> +"XDP features\n:"
> +"- XDP_PASS\n"
> +"- XDP_DROP\n"
> +"- XDP_ABORTED\n"
> +"- XDP_REDIRECT\n"
> +"- XDP_NDO_XMIT\n"
> +"- XDP_TX\n";
> +
> +static const struct argp_option opts[] = {
> +	{ "verbose", 'v', NULL, 0, "Verbose debug output" },
> +	{ "tester", 't', NULL, 0, "Tester mode" },
> +	{ "feature", 'f', "XDP-FEATURE", 0, "XDP feature to test" },
> +	{ "dut_data_ip", 'D', "DUT-DATA-IP", 0, "DUT IP data channel" },
> +	{ "dut_ctrl_ip", 'C', "DUT-CTRL-IP", 0, "DUT IP control channel" },
> +	{ "tester_data_ip", 'T', "TESTER-DATA-IP", 0, "Tester IP data channel"  
> },
> +	{},
> +};
> +
> +static int get_xdp_feature(const char *arg)
> +{
> +	if (!strcmp(arg, "XDP_PASS")) {
> +		env.feature.action = XDP_PASS;
> +		env.feature.drv_feature = NETDEV_XDP_ACT_BASIC;
> +	} else if (!strcmp(arg, "XDP_DROP")) {
> +		env.feature.drv_feature = NETDEV_XDP_ACT_BASIC;
> +		env.feature.action = XDP_DROP;
> +	} else if (!strcmp(arg, "XDP_ABORTED")) {
> +		env.feature.drv_feature = NETDEV_XDP_ACT_BASIC;
> +		env.feature.action = XDP_ABORTED;
> +	} else if (!strcmp(arg, "XDP_TX")) {
> +		env.feature.drv_feature = NETDEV_XDP_ACT_BASIC;
> +		env.feature.action = XDP_TX;
> +	} else if (!strcmp(arg, "XDP_REDIRECT")) {
> +		env.feature.drv_feature = NETDEV_XDP_ACT_REDIRECT;
> +		env.feature.action = XDP_REDIRECT;
> +	} else if (!strcmp(arg, "XDP_NDO_XMIT")) {
> +		env.feature.drv_feature = NETDEV_XDP_ACT_NDO_XMIT;
> +	} else {
> +		return -EINVAL;
> +	}
> +
> +	return 0;
> +}
> +
> +static char *get_xdp_feature_str(void)
> +{
> +	switch (env.feature.action) {
> +	case XDP_PASS:
> +		return YELLOW("XDP_PASS");
> +	case XDP_DROP:
> +		return YELLOW("XDP_DROP");
> +	case XDP_ABORTED:
> +		return YELLOW("XDP_ABORTED");
> +	case XDP_TX:
> +		return YELLOW("XDP_TX");
> +	case XDP_REDIRECT:
> +		return YELLOW("XDP_REDIRECT");
> +	default:
> +		break;
> +	}
> +
> +	if (env.feature.drv_feature == NETDEV_XDP_ACT_NDO_XMIT)
> +		return YELLOW("XDP_NDO_XMIT");
> +
> +	return "";
> +}
> +
> +static error_t parse_arg(int key, char *arg, struct argp_state *state)
> +{
> +	switch (key) {
> +	case 'v':
> +		env.verbosity = true;
> +		break;
> +	case 't':
> +		env.is_tester = true;
> +		break;
> +	case 'f':
> +		if (get_xdp_feature(arg) < 0) {
> +			fprintf(stderr, "Invalid xdp feature: %s\n", arg);
> +			argp_usage(state);
> +			return ARGP_ERR_UNKNOWN;
> +		}
> +		break;
> +	case 'D':
> +		if (make_sockaddr(AF_INET6, arg, DUT_ECHO_PORT,
> +				  &env.dut_addr, NULL)) {
> +			fprintf(stderr, "Invalid DUT address: %s\n", arg);
> +			return ARGP_ERR_UNKNOWN;
> +		}
> +		break;
> +	case 'C':
> +		if (make_sockaddr(AF_INET6, arg, DUT_CTRL_PORT,
> +				  &env.dut_ctrl_addr, NULL)) {
> +			fprintf(stderr, "Invalid DUT CTRL address: %s\n", arg);
> +			return ARGP_ERR_UNKNOWN;
> +		}
> +		break;
> +	case 'T':
> +		if (make_sockaddr(AF_INET6, arg, 0, &env.tester_addr, NULL)) {
> +			fprintf(stderr, "Invalid Tester address: %s\n", arg);
> +			return ARGP_ERR_UNKNOWN;
> +		}
> +		break;
> +	case ARGP_KEY_ARG:
> +		errno = 0;
> +		if (strlen(arg) >= IF_NAMESIZE) {
> +			fprintf(stderr, "Invalid device name: %s\n", arg);
> +			argp_usage(state);
> +			return ARGP_ERR_UNKNOWN;
> +		}
> +
> +		env.ifindex = if_nametoindex(arg);
> +		if (!env.ifindex)
> +			env.ifindex = strtoul(arg, NULL, 0);
> +		if (!env.ifindex) {
> +			fprintf(stderr,
> +				"Bad interface index or name (%d): %s\n",
> +				errno, strerror(errno));
> +			argp_usage(state);
> +			return ARGP_ERR_UNKNOWN;
> +		}
> +		break;
> +	default:
> +		return ARGP_ERR_UNKNOWN;
> +	}
> +
> +	return 0;
> +}
> +
> +static const struct argp argp = {
> +	.options = opts,
> +	.parser = parse_arg,
> +	.doc = argp_program_doc,
> +};
> +
> +static void set_env_default(void)
> +{
> +	env.feature.drv_feature = NETDEV_XDP_ACT_NDO_XMIT;
> +	env.feature.action = -EINVAL;
> +	env.ifindex = -ENODEV;
> +	make_sockaddr(AF_INET6, "::ffff:127.0.0.1", DUT_CTRL_PORT,
> +		      &env.dut_ctrl_addr, NULL);
> +	make_sockaddr(AF_INET6, "::ffff:127.0.0.1", DUT_ECHO_PORT,
> +		      &env.dut_addr, NULL);
> +	make_sockaddr(AF_INET6, "::ffff:127.0.0.1", 0, &env.tester_addr, NULL);
> +}
> +
> +static void *dut_echo_thread(void *arg)
> +{
> +	unsigned char buf[sizeof(struct tlv_hdr)];
> +	int sockfd = *(int *)arg;
> +
> +	while (!exiting) {
> +		struct tlv_hdr *tlv = (struct tlv_hdr *)buf;
> +		struct sockaddr_storage addr;
> +		socklen_t addrlen;
> +		size_t n;
> +
> +		n = recvfrom(sockfd, buf, sizeof(buf), MSG_WAITALL,
> +			     (struct sockaddr *)&addr, &addrlen);
> +		if (n != ntohs(tlv->len))
> +			continue;
> +
> +		if (ntohs(tlv->type) != CMD_ECHO)
> +			continue;
> +
> +		sendto(sockfd, buf, sizeof(buf), MSG_NOSIGNAL | MSG_CONFIRM,
> +		       (struct sockaddr *)&addr, addrlen);
> +	}
> +
> +	pthread_exit((void *)0);
> +	close(sockfd);
> +
> +	return NULL;
> +}
> +
> +static int dut_run_echo_thread(pthread_t *t, int *sockfd)
> +{
> +	int err;
> +
> +	sockfd = start_reuseport_server(AF_INET6, SOCK_DGRAM, NULL,
> +					DUT_ECHO_PORT, 0, 1);
> +	if (!sockfd) {
> +		fprintf(stderr, "Failed to create echo socket\n");
> +		return -errno;
> +	}
> +
> +	/* start echo channel */
> +	err = pthread_create(t, NULL, dut_echo_thread, sockfd);
> +	if (err) {
> +		fprintf(stderr, "Failed creating dut_echo thread: %s\n",
> +			strerror(-err));
> +		free_fds(sockfd, 1);
> +		return -EINVAL;
> +	}
> +
> +	return 0;
> +}
> +
> +static int dut_attach_xdp_prog(struct xdp_features *skel, int flags)
> +{
> +	enum xdp_action action = env.feature.action;
> +	struct bpf_program *prog;
> +	unsigned int key = 0;
> +	int err, fd = 0;
> +
> +	if (env.feature.drv_feature == NETDEV_XDP_ACT_NDO_XMIT) {
> +		struct bpf_devmap_val entry = {
> +			.ifindex = env.ifindex,
> +		};
> +
> +		err = bpf_map__update_elem(skel->maps.dev_map,
> +					   &key, sizeof(key),
> +					   &entry, sizeof(entry), 0);
> +		if (err < 0)
> +			return err;
> +
> +		fd = bpf_program__fd(skel->progs.xdp_do_redirect_cpumap);
> +		action = XDP_REDIRECT;
> +	}
> +
> +	switch (action) {
> +	case XDP_TX:
> +		prog = skel->progs.xdp_do_tx;
> +		break;
> +	case XDP_DROP:
> +		prog = skel->progs.xdp_do_drop;
> +		break;
> +	case XDP_ABORTED:
> +		prog = skel->progs.xdp_do_aborted;
> +		break;
> +	case XDP_PASS:
> +		prog = skel->progs.xdp_do_pass;
> +		break;
> +	case XDP_REDIRECT: {
> +		struct bpf_cpumap_val entry = {
> +			.qsize = 2048,
> +			.bpf_prog.fd = fd,
> +		};
> +
> +		err = bpf_map__update_elem(skel->maps.cpu_map,
> +					   &key, sizeof(key),
> +					   &entry, sizeof(entry), 0);
> +		if (err < 0)
> +			return err;
> +
> +		prog = skel->progs.xdp_do_redirect;
> +		break;
> +	}
> +	default:
> +		return -EINVAL;
> +	}
> +
> +	err = bpf_xdp_attach(env.ifindex, bpf_program__fd(prog), flags, NULL);
> +	if (err)
> +		fprintf(stderr,
> +			"Failed to attach XDP program to ifindex %d\n",
> +			env.ifindex);
> +	return err;
> +}
> +
> +static int recv_msg(int sockfd, void *buf, size_t bufsize, void *val,
> +		    size_t val_size)
> +{
> +	struct tlv_hdr *tlv = (struct tlv_hdr *)buf;
> +	size_t len;
> +
> +	len = recv(sockfd, buf, bufsize, 0);
> +	if (len != ntohs(tlv->len) || len < sizeof(*tlv))
> +		return -EINVAL;
> +
> +	if (val) {
> +		len -= sizeof(*tlv);
> +		if (len > val_size)
> +			return -ENOMEM;
> +
> +		memcpy(val, tlv->data, len);
> +	}
> +
> +	return 0;
> +}
> +
> +static int dut_run(struct xdp_features *skel)
> +{
> +	int flags = XDP_FLAGS_UPDATE_IF_NOEXIST | XDP_FLAGS_DRV_MODE;
> +	int state, err, *sockfd, ctrl_sockfd, echo_sockfd;
> +	struct sockaddr_storage ctrl_addr;
> +	pthread_t dut_thread;
> +	socklen_t addrlen;
> +
> +	sockfd = start_reuseport_server(AF_INET6, SOCK_STREAM, NULL,
> +					DUT_CTRL_PORT, 0, 1);
> +	if (!sockfd) {
> +		fprintf(stderr, "Failed to create DUT socket\n");
> +		return -errno;
> +	}
> +
> +	ctrl_sockfd = accept(*sockfd, (struct sockaddr *)&ctrl_addr, &addrlen);
> +	if (ctrl_sockfd < 0) {
> +		fprintf(stderr, "Failed to accept connection on DUT socket\n");
> +		free_fds(sockfd, 1);
> +		return -errno;
> +	}
> +
> +	/* CTRL loop */
> +	while (!exiting) {
> +		unsigned char buf[BUFSIZE] = {};
> +		struct tlv_hdr *tlv = (struct tlv_hdr *)buf;
> +
> +		err = recv_msg(ctrl_sockfd, buf, BUFSIZE, NULL, 0);
> +		if (err)
> +			continue;
> +
> +		switch (ntohs(tlv->type)) {
> +		case CMD_START: {
> +			if (state == CMD_START)
> +				continue;
> +
> +			state = CMD_START;
> +			/* Load the XDP program on the DUT */
> +			err = dut_attach_xdp_prog(skel, flags);
> +			if (err)
> +				goto out;
> +
> +			err = dut_run_echo_thread(&dut_thread, &echo_sockfd);
> +			if (err < 0)
> +				goto out;
> +
> +			tlv->type = htons(CMD_ACK);
> +			tlv->len = htons(sizeof(*tlv));
> +			err = send(ctrl_sockfd, buf, sizeof(*tlv), 0);
> +			if (err < 0)
> +				goto end_thread;
> +			break;
> +		}
> +		case CMD_STOP:
> +			if (state != CMD_START)
> +				break;
> +
> +			state = CMD_STOP;
> +
> +			exiting = true;
> +			bpf_xdp_detach(env.ifindex, flags, NULL);
> +
> +			tlv->type = htons(CMD_ACK);
> +			tlv->len = htons(sizeof(*tlv));
> +			err = send(ctrl_sockfd, buf, sizeof(*tlv), 0);
> +			goto end_thread;
> +		case CMD_GET_XDP_CAP: {
> +			LIBBPF_OPTS(bpf_xdp_query_opts, opts);
> +			unsigned long long val;
> +			size_t n;
> +
> +			err = bpf_xdp_query(env.ifindex, XDP_FLAGS_DRV_MODE,
> +					    &opts);
> +			if (err) {
> +				fprintf(stderr,
> +					"Failed to query XDP cap for ifindex %d\n",
> +					env.ifindex);
> +				goto end_thread;
> +			}
> +
> +			tlv->type = htons(CMD_ACK);
> +			n = sizeof(*tlv) + sizeof(opts.feature_flags);
> +			tlv->len = htons(n);
> +
> +			val = htobe64(opts.feature_flags);
> +			memcpy(tlv->data, &val, sizeof(val));
> +
> +			err = send(ctrl_sockfd, buf, n, 0);
> +			if (err < 0)
> +				goto end_thread;
> +			break;
> +		}
> +		case CMD_GET_STATS: {
> +			unsigned int key = 0, val;
> +			size_t n;
> +
> +			err = bpf_map__lookup_elem(skel->maps.dut_stats,
> +						   &key, sizeof(key),
> +						   &val, sizeof(val), 0);
> +			if (err) {
> +				fprintf(stderr, "bpf_map_lookup_elem failed\n");
> +				goto end_thread;
> +			}
> +
> +			tlv->type = htons(CMD_ACK);
> +			n = sizeof(*tlv) + sizeof(val);
> +			tlv->len = htons(n);
> +
> +			val = htonl(val);
> +			memcpy(tlv->data, &val, sizeof(val));
> +
> +			err = send(ctrl_sockfd, buf, n, 0);
> +			if (err < 0)
> +				goto end_thread;
> +			break;
> +		}
> +		default:
> +			break;
> +		}
> +	}
> +
> +end_thread:
> +	pthread_join(dut_thread, NULL);
> +out:
> +	bpf_xdp_detach(env.ifindex, flags, NULL);
> +	close(ctrl_sockfd);
> +	free_fds(sockfd, 1);
> +
> +	return err;
> +}
> +
> +static bool tester_collect_detected_cap(struct xdp_features *skel,
> +					unsigned int dut_stats)
> +{
> +	unsigned int err, key = 0, val;
> +
> +	if (!dut_stats)
> +		return false;
> +
> +	err = bpf_map__lookup_elem(skel->maps.stats, &key, sizeof(key),
> +				   &val, sizeof(val), 0);
> +	if (err) {
> +		fprintf(stderr, "bpf_map_lookup_elem failed\n");
> +		return false;
> +	}
> +
> +	switch (env.feature.action) {
> +	case XDP_PASS:
> +	case XDP_TX:
> +	case XDP_REDIRECT:
> +		return val > 0;
> +	case XDP_DROP:
> +	case XDP_ABORTED:
> +		return val == 0;
> +	default:
> +		break;
> +	}
> +
> +	if (env.feature.drv_feature == NETDEV_XDP_ACT_NDO_XMIT)
> +		return val > 0;
> +
> +	return false;
> +}
> +
> +static int send_and_recv_msg(int sockfd, enum test_commands cmd, void  
> *val,
> +			     size_t val_size)
> +{
> +	unsigned char buf[BUFSIZE] = {};
> +	struct tlv_hdr *tlv = (struct tlv_hdr *)buf;
> +	int err;
> +
> +	tlv->type = htons(cmd);
> +	tlv->len = htons(sizeof(*tlv));
> +
> +	err = send(sockfd, buf, sizeof(*tlv), 0);
> +	if (err < 0)
> +		return err;
> +
> +	err = recv_msg(sockfd, buf, BUFSIZE, val, val_size);
> +	if (err < 0)
> +		return err;
> +
> +	return ntohs(tlv->type) == CMD_ACK ? 0 : -EINVAL;
> +}
> +
> +static int send_echo_msg(void)
> +{
> +	unsigned char buf[sizeof(struct tlv_hdr)];
> +	struct tlv_hdr *tlv = (struct tlv_hdr *)buf;
> +	int sockfd, n;
> +
> +	sockfd = socket(AF_INET6, SOCK_DGRAM, 0);
> +	if (sockfd < 0) {
> +		fprintf(stderr, "Failed to create echo socket\n");
> +		return -errno;
> +	}
> +
> +	tlv->type = htons(CMD_ECHO);
> +	tlv->len = htons(sizeof(*tlv));
> +
> +	n = sendto(sockfd, buf, sizeof(*tlv), MSG_NOSIGNAL | MSG_CONFIRM,
> +		   (struct sockaddr *)&env.dut_addr, sizeof(env.dut_addr));
> +	close(sockfd);
> +
> +	return n == ntohs(tlv->len) ? 0 : -EINVAL;
> +}
> +
> +static int tester_run(struct xdp_features *skel)
> +{
> +	int flags = XDP_FLAGS_UPDATE_IF_NOEXIST | XDP_FLAGS_DRV_MODE;
> +	unsigned long long advertised_feature;
> +	struct bpf_program *prog;
> +	unsigned int stats;
> +	int i, err, sockfd;
> +	bool detected_cap;
> +
> +	sockfd = socket(AF_INET6, SOCK_STREAM, 0);
> +	if (sockfd < 0) {
> +		fprintf(stderr, "Failed to create tester socket\n");
> +		return -errno;
> +	}
> +
> +	if (settimeo(sockfd, 1000) < 0)
> +		return -EINVAL;
> +
> +	err = connect(sockfd, (struct sockaddr *)&env.dut_ctrl_addr,
> +		      sizeof(env.dut_ctrl_addr));
> +	if (err) {
> +		fprintf(stderr, "Failed to connect to the DUT\n");
> +		return -errno;
> +	}
> +
> +	err = send_and_recv_msg(sockfd, CMD_GET_XDP_CAP, &advertised_feature,
> +				sizeof(advertised_feature));
> +	if (err < 0) {
> +		close(sockfd);
> +		return err;
> +	}
> +
> +	advertised_feature = be64toh(advertised_feature);
> +
> +	if (env.feature.drv_feature == NETDEV_XDP_ACT_NDO_XMIT ||
> +	    env.feature.action == XDP_TX)
> +		prog = skel->progs.xdp_tester_check_tx;
> +	else
> +		prog = skel->progs.xdp_tester_check_rx;
> +
> +	err = bpf_xdp_attach(env.ifindex, bpf_program__fd(prog), flags, NULL);
> +	if (err) {
> +		fprintf(stderr, "Failed to attach XDP program to ifindex %d\n",
> +			env.ifindex);
> +		goto out;
> +	}
> +
> +	err = send_and_recv_msg(sockfd, CMD_START, NULL, 0);
> +	if (err)
> +		goto out;
> +
> +	for (i = 0; i < 10 && !exiting; i++) {
> +		err = send_echo_msg();
> +		if (err < 0)
> +			goto out;
> +
> +		sleep(1);
> +	}
> +
> +	err = send_and_recv_msg(sockfd, CMD_GET_STATS, &stats, sizeof(stats));
> +	if (err)
> +		goto out;
> +
> +	/* stop the test */
> +	err = send_and_recv_msg(sockfd, CMD_STOP, NULL, 0);
> +	/* send a new echo message to wake echo thread of the dut */
> +	send_echo_msg();
> +
> +	detected_cap = tester_collect_detected_cap(skel, ntohl(stats));
> +
> +	fprintf(stdout, "Feature %s: [%s][%s]\n", get_xdp_feature_str(),
> +		detected_cap ? GREEN("DETECTED") : RED("NOT DETECTED"),
> +		env.feature.drv_feature & advertised_feature ? GREEN("ADVERTISED")
> +							     : RED("NOT ADVERTISED"));
> +out:
> +	bpf_xdp_detach(env.ifindex, flags, NULL);
> +	close(sockfd);
> +	return err < 0 ? err : 0;
> +}
> +
> +int main(int argc, char **argv)
> +{
> +	struct xdp_features *skel;
> +	int err;
> +
> +	libbpf_set_strict_mode(LIBBPF_STRICT_ALL);
> +	libbpf_set_print(libbpf_print_fn);
> +
> +	signal(SIGINT, sig_handler);
> +	signal(SIGTERM, sig_handler);
> +
> +	set_env_default();
> +
> +	/* Parse command line arguments */
> +	err = argp_parse(&argp, argc, argv, 0, NULL, NULL);
> +	if (err)
> +		return err;
> +
> +	if (env.ifindex < 0) {
> +		fprintf(stderr, "Invalid ifindex\n");
> +		return -ENODEV;
> +	}
> +
> +	/* Load and verify BPF application */
> +	skel = xdp_features__open();
> +	if (!skel) {
> +		fprintf(stderr, "Failed to open and load BPF skeleton\n");
> +		return -EINVAL;
> +	}
> +
> +	skel->rodata->tester_addr =
> +		((struct sockaddr_in6 *)&env.tester_addr)->sin6_addr;
> +	skel->rodata->dut_addr =
> +		((struct sockaddr_in6 *)&env.dut_addr)->sin6_addr;
> +
> +	/* Load & verify BPF programs */
> +	err = xdp_features__load(skel);
> +	if (err) {
> +		fprintf(stderr, "Failed to load and verify BPF skeleton\n");
> +		goto cleanup;
> +	}
> +
> +	err = xdp_features__attach(skel);
> +	if (err) {
> +		fprintf(stderr, "Failed to attach BPF skeleton\n");
> +		goto cleanup;
> +	}
> +
> +	if (env.is_tester) {
> +		/* Tester */
> +		fprintf(stdout, "Starting tester on device %d\n", env.ifindex);
> +		err = tester_run(skel);
> +	} else {
> +		/* DUT */
> +		fprintf(stdout, "Starting DUT on device %d\n", env.ifindex);
> +		err = dut_run(skel);
> +	}
> +
> +cleanup:
> +	xdp_features__destroy(skel);
> +
> +	return err < 0 ? -err : 0;
> +}
> diff --git a/tools/testing/selftests/bpf/xdp_features.h  
> b/tools/testing/selftests/bpf/xdp_features.h
> new file mode 100644
> index 000000000000..2670c541713b
> --- /dev/null
> +++ b/tools/testing/selftests/bpf/xdp_features.h
> @@ -0,0 +1,20 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +
> +/* test commands */
> +enum test_commands {
> +	CMD_STOP,		/* CMD */
> +	CMD_START,		/* CMD */
> +	CMD_ECHO,		/* CMD */
> +	CMD_ACK,		/* CMD + data */
> +	CMD_GET_XDP_CAP,	/* CMD */
> +	CMD_GET_STATS,		/* CMD */
> +};
> +
> +#define DUT_CTRL_PORT	12345
> +#define DUT_ECHO_PORT	12346
> +
> +struct tlv_hdr {
> +	__be16 type;
> +	__be16 len;
> +	__u8 data[];
> +};
> --
> 2.39.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

