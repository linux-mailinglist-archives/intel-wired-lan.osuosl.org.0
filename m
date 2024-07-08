Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3802592A307
	for <lists+intel-wired-lan@lfdr.de>; Mon,  8 Jul 2024 14:41:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 706B880E92;
	Mon,  8 Jul 2024 12:41:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9dXqgS5tTg7W; Mon,  8 Jul 2024 12:41:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D291880CFD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1720442489;
	bh=NFiWLMCPA/L0aduGzeOCC1FNJs2kXomrcmAUh+umjTM=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=0DgdanL/BUtY5skf+6ZvrBL7FVQH2NiPdJnQk5zRgrnwbHpNTk7Y2m6ZnQVqGw91R
	 e2JO/YzaCcSacYJOiNora9/WwwLDlVH4xmwP3RnrjUNqF0fhpPKK4Ro29Vpf1Zd5JJ
	 FY0/VOhP3NMLkRDQb+6D67i0amXdqBdIHN43gHQ2dXWUgEqA/cMgyIH1aVrdnsuCFo
	 sykTqSvckTd+zoxnJzYBAxbwH6NqszRO63x53EAoPEscx+WQc4vha6Gl5uPHSMCoFx
	 txwxzh8vNrvmuQ4F6TrhIEUFRJHdiwAdrqs8d3P2xBkX8ThagVHJ2TGVwTdbBqLR4k
	 VfYN0i3F3v5fA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D291880CFD;
	Mon,  8 Jul 2024 12:41:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 31DF91BF390
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jul 2024 12:41:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1EE0980D75
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jul 2024 12:41:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SETzqP_Pn9pU for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Jul 2024 12:41:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:40e1:4800::1; helo=sin.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4B8A480CFD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4B8A480CFD
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4B8A480CFD
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jul 2024 12:41:26 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 54AEECE0A13;
 Mon,  8 Jul 2024 12:41:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 32C89C116B1;
 Mon,  8 Jul 2024 12:41:19 +0000 (UTC)
Date: Mon, 8 Jul 2024 13:41:17 +0100
From: Simon Horman <horms@kernel.org>
To: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Message-ID: <20240708124117.GO1481495@kernel.org>
References: <20240703125922.5625-1-mateusz.polchlopek@intel.com>
 <20240703125922.5625-2-mateusz.polchlopek@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240703125922.5625-2-mateusz.polchlopek@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1720442481;
 bh=impr+NxFXb/SzzQ/WN7mJ3oYYmIPSfKlOWITJE5lKD8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=NE22W8LSNyZTHz2/F+EPz7wOa8eFUun2Ujd0aeOvGUbL47s8ldvagN4Kbe37lwz2r
 RZIEOgSopnz52qzFafoaubvphmyD47wQSV10UKQVr1ODgqTyqo34Y1mpRkIg5+74rD
 QINVd/cDvsqQxnJUGSuBZNHck8e2uLkFXHImbDeFtYHj81oqZTnpqJOMXW2cRpavCr
 J2LXvKK4lTxc/qyTrCcS8vutzGAVBjXyjFRWcLHugVApNslmLJHX6RdbdF/5g7/3MP
 0ouUhbcxCRPbaJuryDCBXuS1CCV+9Lsnb+DlAz4Mhc+LGel+OUq9OSAfCSzJj/ePo9
 SuhhROSOWbotg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=NE22W8LS
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 1/6] checkpatch: don't
 complain on _Generic() use
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
Cc: willemb@google.com, Wojciech Drewek <wojciech.drewek@intel.com>,
 dwaipayanray1@gmail.com, linux-kernel@vger.kernel.org, joe@perches.com,
 edumazet@google.com, intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 apw@canonical.com, lukas.bulwahn@gmail.com, akpm@linux-foundation.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Jul 03, 2024 at 08:59:17AM -0400, Mateusz Polchlopek wrote:
> From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> 
> Improve CamelCase recognition logic to avoid reporting on
>  _Generic() use.
> 
> Other C keywords, such as _Bool, are intentionally omitted, as those
> should be rather avoided in new source code.
> 
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

