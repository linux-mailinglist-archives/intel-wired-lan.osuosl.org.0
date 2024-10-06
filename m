Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id CC01099302F
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Oct 2024 16:57:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8154F80B83;
	Mon,  7 Oct 2024 14:57:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1S_P8SSCogn2; Mon,  7 Oct 2024 14:57:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C0E5980BA5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728313021;
	bh=i3b6VewzdWsYLb8rinUu6Go1q/V2crmVUsAabrmyl+4=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=UwYlssL0yBzaEir+9/NtjgHjF/D08Sf6gf0+4ImUxQ3yuVB8faZmSGPTdH5/Deycf
	 bMh37Nbe6HUC7/P2vtasnPUegVr5CUOtUBP1l/Y/Rm7QZayp8q1WrYHV0wec4udsZy
	 QQxbvdsO4o6zLYUTCjlodufLZl6v6GE91DBooskk4XtyP9HmD7tLzvAPrA9ztiCgbg
	 3i7gu9/ztBRkzXS2XZ2hszZndqgNoAsV7K4S8RaT/fGTjZYafYqZJR4qhe2Le8zJC7
	 vM+ejHBvgY1n5x2cljJQxcq9xFsgXaDH/CyKn62TgbYUbNuDer7diqE0nMKMi6K+ay
	 z9Xk14PTB9CfQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C0E5980BA5;
	Mon,  7 Oct 2024 14:57:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2477C1BF239
 for <intel-wired-lan@lists.osuosl.org>; Sun,  6 Oct 2024 01:55:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 132B7401D2
 for <intel-wired-lan@lists.osuosl.org>; Sun,  6 Oct 2024 01:55:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oRNxPjMfGEcc for <intel-wired-lan@lists.osuosl.org>;
 Sun,  6 Oct 2024 01:55:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=andersson@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 2BEFB400EA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2BEFB400EA
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2BEFB400EA
 for <intel-wired-lan@lists.osuosl.org>; Sun,  6 Oct 2024 01:55:47 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 86C2A5C55E1;
 Sun,  6 Oct 2024 01:55:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 442DCC4CEC2;
 Sun,  6 Oct 2024 01:55:42 +0000 (UTC)
From: Bjorn Andersson <andersson@kernel.org>
To: linux-gpio@vger.kernel.org,
	Julia Lawall <Julia.Lawall@inria.fr>
Date: Sat,  5 Oct 2024 20:55:35 -0500
Message-ID: <172817973322.398361.12931602917664759173.b4-ty@kernel.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240930112121.95324-1-Julia.Lawall@inria.fr>
References: <20240930112121.95324-1-Julia.Lawall@inria.fr>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 07 Oct 2024 14:56:59 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1728179745;
 bh=/4L+Waftv30hJTd8pHAaY7MDs2ik61gNjRPrwI78SK4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=bHJhnSlcDypCxKXc9/0e8sSwcsPUcNs5OrzLmNK372VoYuGepvQT+MeJe7gZxz24S
 Td8OetlGIX6VQqxeo+oLpBwCwYCr2xh0kr7HWG2dWxJwS9C9I5+F0Ozm3XgnvgOi6R
 eyo7cMIiqgZ5im6lRwsEC9egd6IBXTkhxhVOAfSeJ6SqQ1OAUWk36taYJoiLw9dpJ9
 1TD2kMI24gaTyunNoaEycYfyV8WJ6EL2ZaaiP5SsbbYsVWCcKHV7TrlwKb7lUEYqTY
 l48kzmdHzTLb/dBfgaSN3gUHXAeR3ENezjiB4lZZ+5JAICFVxSM/ycZNnlcwg/pUoP
 0Njb/XOnUh7ew==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=bHJhnSlc
Subject: Re: [Intel-wired-lan] (subset) [PATCH 00/35] Reorganize kerneldoc
 parameter names
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
Cc: nvdimm@lists.linux.dev, alsa-devel@alsa-project.org,
 Jan Kara <jack@suse.cz>, "Rafael J. Wysocki" <rafael@kernel.org>,
 Neil Brown <neilb@suse.de>, linux-pci@vger.kernel.org,
 kernel-janitors@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-mm@kvack.org, linux-mtd@lists.infradead.org,
 amd-gfx@lists.freedesktop.org, linux-leds@vger.kernel.org,
 drbd-dev@lists.linbit.com,
 Pierre-Louis Bossart <pierre-louis.bossart@linux.dev>, dccp@vger.kernel.org,
 Dai Ngo <Dai.Ngo@oracle.com>, Christophe Leroy <christophe.leroy@csgroup.eu>,
 iommu@lists.linux.dev, intel-wired-lan@lists.osuosl.org,
 Robin Murphy <robin.murphy@arm.com>, Olga Kornievskaia <okorniev@redhat.com>,
 linux-arm-msm@vger.kernel.org, Naveen N Rao <naveen@kernel.org>,
 linux-sound@vger.kernel.org, maple-tree@lists.infradead.org,
 Tom Talpey <tom@talpey.com>, Madhavan Srinivasan <maddy@linux.ibm.com>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Nicholas Piggin <npiggin@gmail.com>, linux-omap@vger.kernel.org,
 Zhihao Cheng <chengzhihao1@huawei.com>, linux-arm-kernel@lists.infradead.org,
 linux-nfs@vger.kernel.org, netdev@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 audit@vger.kernel.org, tipc-discussion@lists.sourceforge.net,
 linux-fsdevel@vger.kernel.org, Sanyog Kale <sanyog.r.kale@intel.com>,
 linux-trace-kernel@vger.kernel.org, linuxppc-dev@lists.ozlabs.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


On Mon, 30 Sep 2024 13:20:46 +0200, Julia Lawall wrote:
> Reorganize kerneldoc parameter names to match the parameter
> order in the function header.
> 
> The misordered cases were identified using the following
> Coccinelle semantic patch:
> 
> // <smpl>
> @initialize:ocaml@
> @@
> 
> [...]

Applied, thanks!

[24/35] soc: qcom: qmi: Reorganize kerneldoc parameter names
        commit: eea73fa08e69fec9cdc915592022bec6a9ac8ad7

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>
