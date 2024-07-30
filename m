Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FCB99413BE
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Jul 2024 15:58:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E1C6040659;
	Tue, 30 Jul 2024 13:58:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EWorYyqMR2qh; Tue, 30 Jul 2024 13:58:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 27FC44063E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722347922;
	bh=KjkXYneYVqJAd9l6x7SXO4ya6waBJhS/04FBwQX66G0=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=WVK3nB9VzqyonvM6cRiNVs2DcYlUj1cSeCsYcFgnmBL9tOrmdgKf1UZKgTXlu/OE1
	 n88fwfmjTkw2caxCJ6pu0BDptWOi/qe2E0zcuwRT1SutYyHzXf+ZJ6/cmPKs6+igiT
	 pOFtx4B/Ws1DNmTH1YukiSfN3ecGoQKrZjyuv031KrSCzJaC91HAajFwrBUYcIubfM
	 OzYTha3+qzyKrmzMwYtYvIGXlz2wLrt3FfC2Iyf2ADH0iJKKrb/QLjz/AzoZ97Fo8t
	 ELKplNbs55sXQk7hm+vEtrDp67N0+GBIMPc9xgiTOHjLKEtrqjXYqztx1IDmnKJm8u
	 zjt8ezG3IqITA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 27FC44063E;
	Tue, 30 Jul 2024 13:58:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DFCCB1BF969
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jul 2024 13:58:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CB3A760718
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jul 2024 13:58:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jcIJx0Zv7lOX for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Jul 2024 13:58:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 4508A606D0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4508A606D0
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4508A606D0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jul 2024 13:58:38 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id EE2E561F10;
 Tue, 30 Jul 2024 13:58:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6F790C4AF0C;
 Tue, 30 Jul 2024 13:58:36 +0000 (UTC)
Date: Tue, 30 Jul 2024 06:58:35 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Wojciech Drewek <wojciech.drewek@intel.com>
Message-ID: <20240730065835.191bd1de@kernel.org>
In-Reply-To: <20240730105121.78985-1-wojciech.drewek@intel.com>
References: <20240730105121.78985-1-wojciech.drewek@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1722347916;
 bh=KjkXYneYVqJAd9l6x7SXO4ya6waBJhS/04FBwQX66G0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=QpL2VvftFHuabJeI5M8ltW6gSJPSls5CwIilVGrGlBzz4Aqq30Rwpn5rIQiBfXLKg
 +PvNEjv3E3tVJOYoeI/hwFJBeJyZcIhAd0c/LzK4Pg2xlXheGDJ3NrWglp+qtgOBGj
 LsTJCbP+DSr/YElIyJvgQ8Ao/1JS+JKmQtOUC3qLC0bu787+JMX1BCuzoAx3idzc/u
 GrSn0OCPGZ0QfZDcEFF8aut4d29yxEu8JNNtoD5k0rQ3GanqoR4Cuy/uai/B+8XO9p
 tiRSmwW5IRaKLMkjaKIxmfdrtdA4wme4LSYtz9JH4LfYFJ9mxivWD4iD55eTkE7cqs
 8iOSVQ7SGb0Tw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=QpL2Vvft
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: Implement ethtool reset
 support
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
Cc: netdev@vger.kernel.org, edumazet@google.com, anthony.l.nguyen@intel.com,
 simon.horman@corigine.com, intel-wired-lan@lists.osuosl.org, pabeni@redhat.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 30 Jul 2024 12:51:21 +0200 Wojciech Drewek wrote:
> ETH_RESET_MAC - ICE_RESET_CORER

Core doesn't really sound like MAC, what is it?
And does PF reset reset mostly PCIe side or more?
My knee jerk mapping would be to map Core to dedicated
and PF to DMA.
