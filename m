Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 130CB88153F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Mar 2024 17:09:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B42EA4094C;
	Wed, 20 Mar 2024 16:09:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lKvjpV6IkFcg; Wed, 20 Mar 2024 16:09:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BF6BA40933
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710950989;
	bh=efpo9AhWripkbIPR16H34GRgbfK9Qlk7HEiWTtMUrc0=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=uvCuRWBzVGDBMgiOxH389G3i+FSI2WN2gzIi5lEtuvS2WaRI1pn7+CTzsGI/g2LtZ
	 MPxypv4bOVapemanep0iF3QebSuG4A5jzYJPxeJ6QkGdBfKcKjyCrDZn5wyH6Xa22w
	 mas8m8sVR0K1QmJSZPFEYLGMyopI4c34IF+ADzoxrht5tZOs5i088i8wtyaH4ddtWQ
	 RArov8+FCAfBWoR+2t4QzeNc8yKxYo5DF99VoTJM0/wAUxqSjPdt0vwjlvf9eA1f3B
	 HkP3PzVdOhQ4FAIyzuufugnz7bIDWNH24E7tmcdDiPWssG0PI3Zayqcr4Ibu6l2yPK
	 a3Dgy52QuxGdA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BF6BA40933;
	Wed, 20 Mar 2024 16:09:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EDE681BF5A7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Mar 2024 16:09:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D9F08402E5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Mar 2024 16:09:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LqyweWi6n8Eh for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 Mar 2024 16:09:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 2481C4011B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2481C4011B
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2481C4011B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Mar 2024 16:09:46 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id BFF5F60FF2;
 Wed, 20 Mar 2024 16:09:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 69B65C433C7;
 Wed, 20 Mar 2024 16:09:40 +0000 (UTC)
Date: Wed, 20 Mar 2024 16:09:38 +0000
From: Simon Horman <horms@kernel.org>
To: lakshmi.sowjanya.d@intel.com
Message-ID: <20240320160938.GV185808@kernel.org>
References: <20240319130547.4195-1-lakshmi.sowjanya.d@intel.com>
 <20240319130547.4195-12-lakshmi.sowjanya.d@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240319130547.4195-12-lakshmi.sowjanya.d@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1710950985;
 bh=eElWcB41AoBcrw2W6dId5StcFH42yYRYig91JzcJ8qQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rmqTMWnG3wf+0ACqT2qYY6cOhL1XEakoZB3MoiZ6kCRTdM7wPGnZqlDbki7KZReX+
 fXNgYPhCRdxxCYkU59i4ZvQCWluxF2XtKaQKParMSlFiKrMCrVsqEATGOOaN9Sb1sy
 e+hPcjWbB7oVy3CEFEc9SYharoPVcQ5UII1NQMX71rxBVyvSLhMsPLqjNfS/jXUH6A
 5V3tkZ85nbAufQUswK8ZDlE5t00rJ/XuqYv9mQUZx6EMstW5wVsbDShcyUl8IXvqUh
 tQN90NgT7fmBMrki+OnsQ7owNSN1U9yM0TUUyw0Z8LFt9URqOcCvnYzUfxB0Frpibm
 bZpSuSGHSVuEw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=rmqTMWnG
Subject: Re: [Intel-wired-lan] [PATCH v5 11/11] ABI: pps: Add ABI
 documentation for Intel TIO
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
Cc: linux-doc@vger.kernel.org, mallikarjunappa.sangannavar@intel.com,
 alexandre.torgue@foss.st.com, perex@perex.cz, anthony.l.nguyen@intel.com,
 thejesh.reddy.t.r@intel.com, christopher.s.hall@intel.com, corbet@lwn.net,
 x86@kernel.org, joabreu@synopsys.com, peter.hilber@opensynergy.com,
 intel-wired-lan@lists.osuosl.org, subramanian.mohan@intel.com,
 linux-sound@vger.kernel.org, tglx@linutronix.de,
 andriy.shevchenko@linux.intel.com, giometti@enneenne.com,
 netdev@vger.kernel.org, pandith.n@intel.com, eddie.dong@intel.com,
 linux-kernel@vger.kernel.org, basavaraj.goudar@intel.com,
 mcoquelin.stm32@gmail.com, jstultz@google.com, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Mar 19, 2024 at 06:35:47PM +0530, lakshmi.sowjanya.d@intel.com wrote:
> From: Lakshmi Sowjanya D <lakshmi.sowjanya.d@intel.com>
> 
> Document sysfs interface for Intel Timed I/O PPS driver.
> 
> Signed-off-by: Lakshmi Sowjanya D <lakshmi.sowjanya.d@intel.com>
> ---
>  Documentation/ABI/testing/sysfs-platform-pps-tio | 7 +++++++
>  1 file changed, 7 insertions(+)
>  create mode 100644 Documentation/ABI/testing/sysfs-platform-pps-tio

Hi Lakshmi,

Please consider adding this new file to the
PPS SUPPORT section in the MAINTAINERS file.
