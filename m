Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 295DFA0178B
	for <lists+intel-wired-lan@lfdr.de>; Sun,  5 Jan 2025 01:54:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BB09740636;
	Sun,  5 Jan 2025 00:54:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gz3IGckb9p7T; Sun,  5 Jan 2025 00:54:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 81AE44063B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736038486;
	bh=70lugS+r1UBEWLrFE7UGnEE2yhmK5aZWc4y3bBpVsUA=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=9r0vnTLwSBgJWzp/U960Y+oDozAHZcBODeR9MZarnt2cK/MM8D1YMCIuis6BBWawC
	 SeCZn+GAJ/weZFOq1zJNqJ5U/hR3KBV9lvw2fqiX7fsVs5ifAcd+0dKQm8dMPD9B3K
	 lm/dL5+GF8VwvTFBm4DZ6H98IeOF02Qr89OEzdjFaX0TlZHHqNR4l4KQIoJSy/S2ru
	 jji72y6VgHCi+IIr+dYsleIXOdQa+914OgDJJcWO2DwFah84Jyr7Sr5cYvH+EA+eGH
	 ESk5X0QZnyb3qmVTkrdAZ+6PW9GoSwcGBNFouViAThdCwvEjzH+R+4wnf4PfxaT7/9
	 j0xMKRFGN7WYg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 81AE44063B;
	Sun,  5 Jan 2025 00:54:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 19AC4E0F
 for <intel-wired-lan@lists.osuosl.org>; Sun,  5 Jan 2025 00:54:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 066324026F
 for <intel-wired-lan@lists.osuosl.org>; Sun,  5 Jan 2025 00:54:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hzt6_jTJVOVl for <intel-wired-lan@lists.osuosl.org>;
 Sun,  5 Jan 2025 00:54:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E9D5E400AC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E9D5E400AC
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E9D5E400AC
 for <intel-wired-lan@lists.osuosl.org>; Sun,  5 Jan 2025 00:54:43 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 6ED0F5C3D4D;
 Sun,  5 Jan 2025 00:54:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B1726C4CED1;
 Sun,  5 Jan 2025 00:54:41 +0000 (UTC)
Date: Sat, 4 Jan 2025 16:54:40 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: "Dr. David Alan Gilbert" <linux@treblig.org>
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 pabeni@redhat.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Message-ID: <20250104165440.080a9c7b@kernel.org>
In-Reply-To: <Z3muiBPv30Dsp8m5@gallifrey>
References: <20250102174002.200538-1-linux@treblig.org>
 <20250104081532.3af26fa1@kernel.org> <Z3muiBPv30Dsp8m5@gallifrey>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1736038482;
 bh=veIroVZ6s7mitoVTEozq0rmdy+aNoxJCwz2i5kV2nJ8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=svPSzJwk0s0RTmGcLanFNqQQyQ2v6PHTSUDo3EUIaV4p2UY/+VzQ0Xa330ZKigx9C
 ibjwV+lTM1lmt0noJfwr5jDWXM2Kyj72QH0QwKWynuN7DiVJth39E53DoGuI9L8T6B
 DqZ7wAfh7hhJj86CookGXgoI1i0IggISU+VXZ/O3aSaxtZlwThSHe8K7am8dwZkPVL
 DoVbrxmWld+kG9tDcMNmkth0W13k+XxbF+kzHXO00gojEeEW8ERw7y1vRKgg5EXRrh
 MdSQtG8Ww8kmdqpct0kavOBjs3A/Zv4nAB0wFV051Aes2aGuW8G5ezBA1KM4PKRA//
 716BKCEwWUsfg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=svPSzJwk
Subject: Re: [Intel-wired-lan] [PATCH net-next] ixgbevf: Remove unused
 ixgbevf_hv_mbx_ops
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

On Sat, 4 Jan 2025 21:56:24 +0000 Dr. David Alan Gilbert wrote:
> > This one doesn't apply, reportedly.  
> 
> Hmm, do you have a link to that report, or to which tree I should try
> applying it to.

net-next, the tree in the subject prefix:

$ git checkout net-next/main
$ wget 'https://lore.kernel.org/all/20250102174002.200538-1-linux@treblig.org/raw'
Saving 'raw'
$ git am raw
Applying: ixgbevf: Remove unused ixgbevf_hv_mbx_ops
error: patch failed: drivers/net/ethernet/intel/ixgbevf/ixgbevf.h:439
error: drivers/net/ethernet/intel/ixgbevf/ixgbevf.h: patch does not apply
Patch failed at 0001 ixgbevf: Remove unused ixgbevf_hv_mbx_ops
