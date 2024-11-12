Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 396CB9C4CE0
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Nov 2024 03:54:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 67B5280AA3;
	Tue, 12 Nov 2024 02:54:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yOHZ3x7ikknb; Tue, 12 Nov 2024 02:54:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D2A8B80A51
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731380083;
	bh=EH1FiTO7sVLD/vbO78+mrUvpkI+gieHlIdqcHKwwD+s=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=JXAWKayVBrXD4N3MRUWLuQICwHfIa0Jr8jaihMWBOGObhFIpHJL6YU3PhVOg6odWx
	 +OBr50ppZxdd6M2/DJcnwNERt0ml78IYEZUf/M49eivEmXA4LODrEYzzAf9l92uIgk
	 aAM+OoW3lF0jjuMboGnB7p9vzExuyarpfRoClvNqT1yiC7IABCudH4CQCZgjpY1m03
	 4uQoVxYLFQ4KwikLbMuzw0jLP2acgJvzN7gXPtabC2Z7fBvUzm8uU3odp5r0fnyzwT
	 4CYui3LkBB+LVmvskxR8vkpeYUIUNLwrrowsw5A46IF/FUjqhytabnCyPDj+kUsNgz
	 2rSI37OdYz8kQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id D2A8B80A51;
	Tue, 12 Nov 2024 02:54:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 55E3C6C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Nov 2024 02:54:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 34EB1401A2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Nov 2024 02:54:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ba_kJt_1x1VI for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Nov 2024 02:54:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=147.75.193.91;
 helo=nyc.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 63DCC40002
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 63DCC40002
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 63DCC40002
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Nov 2024 02:54:40 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 1BD48A41341;
 Tue, 12 Nov 2024 02:52:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D0960C4CECF;
 Tue, 12 Nov 2024 02:54:38 +0000 (UTC)
Date: Mon, 11 Nov 2024 18:54:38 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Ahmed Zaki <ahmed.zaki@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, Sudheer
 Mogilappagari <sudheer.mogilappagari@intel.com>
Message-ID: <20241111185438.319bbb79@kernel.org>
In-Reply-To: <20241109001206.213581-3-ahmed.zaki@intel.com>
References: <20241109001206.213581-1-ahmed.zaki@intel.com>
 <20241109001206.213581-3-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1731380079;
 bh=fKvkOW5obKyEkLch/Ywu+tcnCH42bpbkxKiPvcAZDJ4=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=FQdmgFsrE1/D8C0C1jk1P076+3lKg1RGjTi11j8WJNjh9BLcYpbgPyO8Lm87C4CUw
 fV+VeNo8eNrS0Je+YEsp0gMPw7jhLjkr1y0LDJOB7xaPQw+c5Ok+Om+fOa+A4t9dKx
 7UoXxF7Xu5JNw5EBP6NejUsFfZ6g8TN/fdXYbDF0M80RavQmI93YOnFTROuFnyIdYE
 FwlJhQ1JvPPGqgVdwy0hLtdu98VNx3BSqEcgcnJnsdWYkPdqRETQlPHHwIDX2mgADL
 cu8gYQeFxzALNgu0AhAuVmQolnU0g5UI9ZHSQcuPPo+RtIaL3iWI6RuGX7tCOLmnIr
 tb4Q03uFgVBxw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=FQdmgFsr
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 2/2] idpf: finish pending IRQ
 handling before freeing interrupt
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

On Fri,  8 Nov 2024 17:12:06 -0700 Ahmed Zaki wrote:
> From: Sudheer Mogilappagari <sudheer.mogilappagari@intel.com>
> 
> Wait for pending IRQs to be handled before an interrupt is free'd up.

read the kdoc on free_irq(), please
