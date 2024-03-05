Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53364871456
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Mar 2024 04:35:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5229840CB6;
	Tue,  5 Mar 2024 03:35:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ijoheCcXNq-D; Tue,  5 Mar 2024 03:35:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6BBB9404C1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709609734;
	bh=XAnzuFK8ILWfnTluYVDANBYiPElUY+Bnvfq23P20BfA=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=VRurNKCgnvI8ZVQXrhQCMOT5Q4BCK1Vr8pG+ot+VsnDsab2OOVvriAi7FoZbPF8Ch
	 ImPj4xEYyD46mlUb4EFzwozy1pOZQFejXvpQGcjxoIUUroCiOVj7ty/bnsvad5JeMe
	 rZe8g9vPNNXTTGIDD1MrBNzNDHosp/OiYlKNQlQ4FlPz++QXhidzhqADdeMB4muEJz
	 7VKtpCLuKvttjX68NFKYebNfBkNZoX/JCteN3id9jhqpwbuZnd2BJVsTgIoTnzrQwS
	 pZ38VGLtzUVnVqaNJo+JxluBG37C2RfWn8MV+gHZxyjw0v54eSfOXbl3QmbnkVzPcF
	 6A1MA7/Dymf+Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6BBB9404C1;
	Tue,  5 Mar 2024 03:35:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5D5271BF3C2
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Mar 2024 03:35:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 48348607A8
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Mar 2024 03:35:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OX8L61Jdemos for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Mar 2024 03:35:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6F864606C6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6F864606C6
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6F864606C6
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Mar 2024 03:35:30 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id D012F61320;
 Tue,  5 Mar 2024 03:35:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E2584C433F1;
 Tue,  5 Mar 2024 03:35:27 +0000 (UTC)
Date: Mon, 4 Mar 2024 19:35:26 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Message-ID: <20240304193526.788ff854@kernel.org>
In-Reply-To: <20240228142054.474626-6-mateusz.polchlopek@intel.com>
References: <20240228142054.474626-1-mateusz.polchlopek@intel.com>
 <20240228142054.474626-6-mateusz.polchlopek@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1709609728;
 bh=zZHekIqHtxy9dF3Cfkpb6Ll2S+QrL7GBUTKgt/C6P8M=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=ILLd+Vie75LndCUKeIG3+B3tLSOVQszlcYxsYR5/nsOX0k4iyDyoeEQcugZRfkwe9
 5aCzAqtiV/6GZVUr2q8pJ+mZbMdzRmSwYAeMjvP3gVDMtz550cy6XI1vmKR35d4lOO
 1SXSgiiMX1V55TlJHTEJJ3benVUC0ftP6JC8AzSB3r/Z1R2xqFHWMubpUg8zpFFP/f
 +mr08iVYx3B0x6pU8B9Ql7q2YL4zvu5ZaYz8c0/DLtZX4yj4F5JOSsJ6SNelOqNTCc
 VWDv9OEpaWjvXzFBUPFxafAUXhyvUqoa7lROaeDUGufA+gsEeA5rB5RCh5fs7eFjL+
 Vhll/AFIqNErg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=ILLd+Vie
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 5/5] ice: Document
 tx_scheduling_layers parameter
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
Cc: andrew@lunn.ch, jiri@resnulli.us, michal.wilczynski@intel.com,
 netdev@vger.kernel.org, lukasz.czapnik@intel.com, victor.raj@intel.com,
 intel-wired-lan@lists.osuosl.org, horms@kernel.org,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 28 Feb 2024 09:20:54 -0500 Mateusz Polchlopek wrote:
> From: Michal Wilczynski <michal.wilczynski@intel.com>
> 
> New driver specific parameter 'tx_scheduling_layers' was introduced.
> Describe parameter in the documentation.
> 
> Signed-off-by: Michal Wilczynski <michal.wilczynski@intel.com>
> Co-developed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>

Acked-by: Jakub Kicinski <kuba@kernel.org>
