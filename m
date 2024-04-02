Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 15F5689568D
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Apr 2024 16:25:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 998D440551;
	Tue,  2 Apr 2024 14:25:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SNyMIF-MdCjv; Tue,  2 Apr 2024 14:25:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C09CE404E7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712067954;
	bh=5R32dYH4+lOvrWDcci4EnK6nNfNzY0nULyXBIk+gZR8=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Zhj0b6hu1luHarWy38DXIsmZ0dZ070Ax7agufYh/x8Fb48Awl67OMLUlf38VztGe8
	 FHuR07klgl1pRyvrrUqp0pZJdlCzDhHu9RemEJFQ5AP+mWuaOhuT+JkhC1vL9CZein
	 cf9dUnaOF8+n/c9eHNl4Uj3qM4ObJXuX3yXFsOeEp8eySMPfoJT2kAld/c97pEBMfN
	 Shpwjv60U/R5KKAzP2mH/G7bdfv5sS6j9Ak4eS8Pkw2ryyevVFnzoQ0RsMw7ltVNDv
	 EFQ7LjpET7BpxQPtZvsKF007phi4jDBqGvgzgmLdOMjf3UtMH8x5XkxE3PbpA3koBX
	 1ttNCj47InfQA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C09CE404E7;
	Tue,  2 Apr 2024 14:25:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C50681BF389
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Apr 2024 14:25:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BDF9382046
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Apr 2024 14:25:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sRyTAQDkz15p for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Apr 2024 14:25:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org F12638203F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F12638203F
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F12638203F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Apr 2024 14:25:50 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id B7CAF60B87;
 Tue,  2 Apr 2024 14:25:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D338FC433C7;
 Tue,  2 Apr 2024 14:25:48 +0000 (UTC)
Date: Tue, 2 Apr 2024 07:25:47 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Wojciech Drewek <wojciech.drewek@intel.com>
Message-ID: <20240402072547.0ac0f186@kernel.org>
In-Reply-To: <a3fd2b83-93af-4a59-a651-1ffe0dbddbe4@intel.com>
References: <20240329092321.16843-1-wojciech.drewek@intel.com>
 <38d874e3-f25b-4af2-8c1c-946ab74c1925@lunn.ch>
 <a3fd2b83-93af-4a59-a651-1ffe0dbddbe4@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1712067949;
 bh=cjKN5hbtCPmpzdSHcCawK2S+8/qL/Ksj9dPaudgrNeQ=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=e1kyeqs+mVApLka41jrcEPhGi2XtTDLVZijg91eIslOiToJyHw97oDPnlNvoYnJEs
 +nSlXeIdxGzF4u0nqszEIG5gT4HJHGU2CGWmhk4LYO/xKYy3KjuubPYH2k2niJiPUv
 UOScB+KvgpJ8TaCOFZ71eGFUCfoNUunWhQUW3JFi5opa8PO4Nmdm/nHr/x3aubDIKe
 d7+OHjGPp10F2XTIl3CPnOqW3TvbgR0bD1/4lBZQsq0DhqKvAvqRJswQUs25rYr8nR
 f2BUC39/qIAQfM3hQZx/vi9N6K9ks4b9rMKrPFrodZMZP6bd1N1q7PlT3mjDmyNSaY
 wga5TdOcOfSUw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=e1kyeqs+
Subject: Re: [Intel-wired-lan] [PATCH net-next 0/3] ethtool: Max power
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
Cc: Andrew Lunn <andrew@lunn.ch>, idosch@nvidia.com, edumazet@google.com,
 marcin.szycik@linux.intel.com, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org, pabeni@redhat.com,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 2 Apr 2024 13:38:59 +0200 Wojciech Drewek wrote:
> > Also, this is about the board, the SFP cage, not the actual SFP
> > module?  Maybe the word cage needs to be in these names?  
> 
> It's about cage. Thanks for bringing it to my attention because now I
> see it might be misleading. I'm extending {set|show}-module command
> but the changes are about max power in the cage. With that in mind
> I agree that adding 'cage' to the names makes sense.

Noob question, what happens if you plug a module with higher power
needs into the cage?
