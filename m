Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 45C1483573E
	for <lists+intel-wired-lan@lfdr.de>; Sun, 21 Jan 2024 19:21:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 59E6760B44;
	Sun, 21 Jan 2024 18:21:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 59E6760B44
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1705861291;
	bh=0GV1ONzNOUYKbA8cnVTHNgG8GdAXRBpG8Q9e5/OVdsw=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=clVbdd7Xpy7ukG5U2zLaqgIpM/ft/jmG2gr0OYirzcFW4OUJU4pyCHXWhrlopJyEi
	 uzzsV3D2h3b/t55nlCwuNNsSxYXR9hBeGR2ihTvRJR8mmci2R3Lxxtr7FarOnCuzjA
	 3Va9njlsCjQ3OCsNjypRwiH39Qenl4TUFpWekxqhlvo+WePXYmABK+odI9HZG30S8G
	 zo/bUalcF7AJZJaopffTxQj8imdX912j1r1fZWQ2BIk8aQh5AdkMMvYUFd+qsTpiiB
	 LnG/fMcl87+ojOEv9ula6IEOgYGO+SRd0cmNd4x1Wqoz8CLLsTTSYmQwTxCL3kaZVc
	 atlW35dsVaoIA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WxX8czEsBu5A; Sun, 21 Jan 2024 18:21:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5E10E60B2B;
	Sun, 21 Jan 2024 18:21:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5E10E60B2B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BC3E81BF427
 for <intel-wired-lan@lists.osuosl.org>; Sun, 21 Jan 2024 18:21:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9469D60B2B
 for <intel-wired-lan@lists.osuosl.org>; Sun, 21 Jan 2024 18:21:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9469D60B2B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XNUgYzS8H3Aw for <intel-wired-lan@lists.osuosl.org>;
 Sun, 21 Jan 2024 18:21:25 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E07EC60A63
 for <intel-wired-lan@lists.osuosl.org>; Sun, 21 Jan 2024 18:21:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E07EC60A63
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 93E1E60EE2;
 Sun, 21 Jan 2024 18:21:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 4092EC433F1;
 Sun, 21 Jan 2024 18:21:23 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 2F804D8C978; Sun, 21 Jan 2024 18:21:23 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <170586128319.13193.14696779543743835984.git-patchwork-notify@kernel.org>
Date: Sun, 21 Jan 2024 18:21:23 +0000
References: <20240118205040.346632-1-mschmidt@redhat.com>
In-Reply-To: <20240118205040.346632-1-mschmidt@redhat.com>
To: Michal Schmidt <mschmidt@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1705861283;
 bh=pMjLSdDvZNyvUwDM5dr+/k9ky+gpYkg2n+u1mNpEqVI=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=RwbO0iKhyHW8lMiJSNEHidMfMpJax+5THX5OeP721g5YRwFTfCFDTKL6RETn9NYUr
 BKS3lcXfGVLYzeedlDAoVks3tVEVtQycltd5K19VC9kNzsfUP6FpoKZGLsJST9SXL3
 ySjJ/NbmRfCe4NIEKEOY+NQHf+nC1Vd5513TPbUwquK7Lb7LldfIuGt6OSq3ZWIM0F
 grUkH1UEYz6gU/+BbDm38Kk33ihXVEQcUVA5ipuEDciOfXcXbyCbqN2ydMSRclV1M/
 wXUi1TzaDs+CEnnftaGANSixLnEAR4H8jpPmB6U6Qb4Swwq7diaI/Lzi6whB8+dvz3
 OhAkJLvUdTDTQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=RwbO0iKh
Subject: Re: [Intel-wired-lan] [PATCH net] idpf: distinguish vports by the
 dev_port attribute
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
Cc: shailendra.bhatnagar@intel.com, netdev@vger.kernel.org,
 jesse.brandeburg@intel.com, pavan.kumar.linga@intel.com,
 anthony.l.nguyen@intel.com, alan.brady@intel.com, sridhar.samudrala@intel.com,
 intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello:

This patch was applied to netdev/net.git (main)
by David S. Miller <davem@davemloft.net>:

On Thu, 18 Jan 2024 21:50:40 +0100 you wrote:
> idpf registers multiple netdevs (virtual ports) for one PCI function,
> but it does not provide a way for userspace to distinguish them with
> sysfs attributes. Per Documentation/ABI/testing/sysfs-class-net, it is
> a bug not to set dev_port for independent ports on the same PCI bus,
> device and function.
> 
> Without dev_port set, systemd-udevd's default naming policy attempts
> to assign the same name ("ens2f0") to all four idpf netdevs on my test
> system and obviously fails, leaving three of them with the initial
> eth<N> name.
> 
> [...]

Here is the summary with links:
  - [net] idpf: distinguish vports by the dev_port attribute
    https://git.kernel.org/netdev/net/c/359724fa3ab7

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


