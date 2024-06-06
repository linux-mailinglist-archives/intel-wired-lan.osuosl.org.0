Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E34F8FDB9F
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Jun 2024 02:50:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0DFC641773;
	Thu,  6 Jun 2024 00:50:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jCqopDB7oSzB; Thu,  6 Jun 2024 00:50:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3197941775
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717635042;
	bh=4KDbh3+6YRBG+Qvd1mzGf+F+Kwp0DfYuOrF8SFKlFkM=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=20IDwVeFDWec9zeYqiU4obi/2JOyTHKJ7+T4eUXbV4zwlg7nZAZmNX1z0h6tPTkQJ
	 xb44Dz2D4Ha9Ro0f1w/9O8YXyqBAg3RizuU6e5mL4aZIbBCKyGW7X8dDEtUO1ijVCT
	 P3s5pjv/HHC38d/l+B0nx1hWc71eyT2Yf2H9CrHdSG5SHQDwq2PCmm5IzbuQmqwb3y
	 KIjf2jxF41v1HG52uXv/c28ATFMOoLhslhpk125tiVMxfoaeaR0LlwihYgWSp7CCek
	 Oq5V3AcEOj81JgcL0Fa2/A4TnPVBCFE99T7ceFgAdcZZNJB0QMOQVnIQndwSRAsvew
	 zI7Kp8UOR8lPg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3197941775;
	Thu,  6 Jun 2024 00:50:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4B5B41BF255
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jun 2024 00:50:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3715C41763
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jun 2024 00:50:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5rjkwGeayfvF for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Jun 2024 00:50:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 69AA941762
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 69AA941762
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 69AA941762
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jun 2024 00:50:39 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 4146160C94;
 Thu,  6 Jun 2024 00:50:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 873DEC3277B;
 Thu,  6 Jun 2024 00:50:37 +0000 (UTC)
Date: Wed, 5 Jun 2024 17:50:36 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
Message-ID: <20240605175036.0d0e535a@kernel.org>
In-Reply-To: <20240604221327.299184-1-jesse.brandeburg@intel.com>
References: <20240604221327.299184-1-jesse.brandeburg@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1717635037;
 bh=UWnvyfa3iJgXi7I827PAz0W2MYHsx4oBEHwa4G5Zn2M=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=TQA4bRQnHe7EL2iYa519cn0Pd0KXVVXjvL3ysDhz7+9HiW6TVmpT78azm5VqEKQJf
 l+8htn1BwdhQ5CJCSXarkrG9f9baUGWN/QbudcwxTYT16U/p50ktj/GWqTG/ZAqwvh
 Ii3RNKgW/FrkY+BrKQeQQW0KLpA5n/RyNnbU/a6RW6AxAldDtNSc3yXU2LnAYs9+7G
 tOPkeDGugv/KKYWJ269dGN0yo9e6zIALYC1IZNG7hdnh842+O9SUNiHoWC9Z1FKSFs
 OuY/gEMWorRWcgSZk+Pw98dYI98b5RYU2gO20imWl2ile0NYPY80v0DygdCOAPZVOl
 4/2a2EpFVbZvQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=TQA4bRQn
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 0/5] ice: add standard
 stats
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
Cc: netdev@vger.kernel.org, linux-doc@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, corbet@lwn.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue,  4 Jun 2024 15:13:20 -0700 Jesse Brandeburg wrote:
> The main point of this series is to implement the standard stats for the
> ice driver, but also add a related documentation fix and finish the
> series off with a cleanup that removes a bunch of code.

With the nit on patch 1 fixed:

Reviewed-by: Jakub Kicinski <kuba@kernel.org>

queue stats next? :]
