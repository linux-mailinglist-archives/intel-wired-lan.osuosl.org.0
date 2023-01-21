Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2953676354
	for <lists+intel-wired-lan@lfdr.de>; Sat, 21 Jan 2023 04:21:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1B9B141707;
	Sat, 21 Jan 2023 03:21:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1B9B141707
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674271272;
	bh=rOiru3VJXWchYnj7qC+b6y3WesXLer9D5a+9WJi76C4=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=p02DpYUlGcWWPHB8PuvhyG0aUE6YiJAcuJFgaQO+yVu2VhJ/r62G1ztkH2dcniuhf
	 4azckueb4XKBfWRrPgTlYPT/KlCdwJlGK+0D/rQP09zIDpvodZGwqv9X0NqH13hKAN
	 05toMDXbfnH2UQweHpUhZ60YhCtZj5f72/d4idcoOsacm5y4gkYSojj1tWc0Om/qXL
	 eQ46Sngq2heqUL0+N2jsH8PeqHW++PSCf4pDD8yR/AMLTZ5BtHvCj4E9fVIQScN+8v
	 tXBjvBI+x0hx448ZB/VoQTcNecd6cUfxerAx6rtSFHm4JgZ0ikMWxE19ipc2Vm17SN
	 RjT/jWbWi/tNA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id j_POQGNP-9Tf; Sat, 21 Jan 2023 03:21:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2652541706;
	Sat, 21 Jan 2023 03:21:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2652541706
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 02FC61BF3C8
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Jan 2023 03:21:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DA5788300C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Jan 2023 03:21:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DA5788300C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CTiZJ8Rw3hpw for <intel-wired-lan@lists.osuosl.org>;
 Sat, 21 Jan 2023 03:21:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 14CF882FCE
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 14CF882FCE
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Jan 2023 03:21:04 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 22C6DB829E4;
 Sat, 21 Jan 2023 03:21:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 80ED8C433D2;
 Sat, 21 Jan 2023 03:21:00 +0000 (UTC)
Date: Fri, 20 Jan 2023 19:20:59 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Lorenzo Bianconi <lorenzo@kernel.org>
Message-ID: <20230120192059.66d058bf@kernel.org>
In-Reply-To: <31e46f564a30e0d3d1e06edb27045be9f318ff0b.1674234430.git.lorenzo@kernel.org>
References: <cover.1674234430.git.lorenzo@kernel.org>
 <31e46f564a30e0d3d1e06edb27045be9f318ff0b.1674234430.git.lorenzo@kernel.org>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1674271261;
 bh=u03+9YLGMyAzqxcb5WaZli1ywOy/8WEW6RNhJoamwIo=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=vR4XX4lUj0i+3xjnU1BnPKvauCzYT21UFbkmulmoN9Xgq6ejTNw4ngaONIdMErLoa
 i9C4R1RWMe2cSIjHTY1Zq4OtKBeG+PkJKC9EIUZFnpHsLPrrV5WoreK3FB6206v9/z
 uL/XWRNpynCvvxTgXf0q+xsgx+Z58t44S59N0A2uVEY1wLW3tGIqsR1WmpXBjmMRIf
 /hO5eetXGlwhAOd9Pv51ZSH2BRva+8cD2LVwhXrBOMIwiRkUuTkW42qtzawX3G0Wbe
 6tga7Kcv8FiEmrFhpMV2a0RAEkCatwYYiL2NVXfdISQ4IwCuaA6ls9D4hQfwFDiFDl
 +UqR+c3mQ6lOQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=vR4XX4lU
Subject: Re: [Intel-wired-lan] [PATCH bpf-next 5/7] libbpf: add API to get
 XDP/XSK supported features
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
 edumazet@google.com, anthony.l.nguyen@intel.com, daniel@iogearbox.net,
 niklas.soderlund@corigine.com, andrii@kernel.org,
 intel-wired-lan@lists.osuosl.org, simon.horman@corigine.com, pabeni@redhat.com,
 aelior@marvell.com, hawk@kernel.org, christophe.jaillet@wanadoo.fr,
 memxor@gmail.com, john@phrozen.org, bjorn@kernel.org, bpf@vger.kernel.org,
 magnus.karlsson@intel.com, leon@kernel.org, netdev@vger.kernel.org,
 toke@redhat.com, ecree.xilinx@gmail.com, alardam@gmail.com, gospo@broadcom.com,
 saeedm@nvidia.com, davem@davemloft.net, nbd@nbd.name
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, 20 Jan 2023 18:16:54 +0100 Lorenzo Bianconi wrote:
> +static int libbpf_netlink_resolve_genl_family_id(const char *name,
> +						 __u16 len, __u16 *id)
> +{
> +	struct libbpf_nla_req req = {
> +		.nh.nlmsg_len	= NLMSG_LENGTH(GENL_HDRLEN),
> +		.nh.nlmsg_type	= GENL_ID_CTRL,
> +		.nh.nlmsg_flags	= NLM_F_REQUEST,
> +		.gnl.cmd	= CTRL_CMD_GETFAMILY,
> +		.gnl.version	= 1,

nlctrl is version 2, shouldn't matter in practice
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
