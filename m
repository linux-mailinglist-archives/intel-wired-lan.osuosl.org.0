Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FFCE880760
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Mar 2024 23:49:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A2D5C6074D;
	Tue, 19 Mar 2024 22:49:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1U-_ZGO7Bcqf; Tue, 19 Mar 2024 22:49:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C012A6068F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710888580;
	bh=YD/K7BlZn6pQi7u041hq+lHtEDQ7hogMPLLS+VWPmeU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=JKKHqpJL2dkojH2FZo2LOLpI0if6zPGI0YtImHOAHa9MbCp3Gy2RVCfnSRiA96a06
	 uFsD9mZt3yWojFuIjxUYl15AdK8i9hPl7KttgrHnuK/5lGWMcaB0zFzoSgDWQe6WVL
	 W5eBpg61XOpGGyIh7SYqNoT2tW9DB9BTWIhE2yjE3mBn/tQpMp/O8Qy5V3MbFzlHdu
	 BttBGr8mw26AZyWM5Qv9Pz0uw5yf2TGnsXRAkYC2TYSaf4B7qKbTYVOiIjaXb/oM2+
	 3/UO5p5i7V95vujFTGCV3ob+jqRxzcOsRXnTW6iD6SoQyDp3RTeSx0PxNqeRhzh3oo
	 1uVZC9rk8ZPZg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C012A6068F;
	Tue, 19 Mar 2024 22:49:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 13B841BF28F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Mar 2024 22:49:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0C60660692
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Mar 2024 22:49:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YznW-J2Bg--h for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Mar 2024 22:49:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 9BB166068F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9BB166068F
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9BB166068F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Mar 2024 22:49:35 +0000 (UTC)
Received: from [192.168.178.112] (p57b378ee.dip0.t-ipconnect.de
 [87.179.120.238])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 152AC61E5FE3D;
 Tue, 19 Mar 2024 23:48:19 +0100 (CET)
Message-ID: <cd42aca9-ac6c-4579-96d5-121a38ebded5@molgen.mpg.de>
Date: Tue, 19 Mar 2024 23:48:17 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Lakshmi Sowjanya D <lakshmi.sowjanya.d@intel.com>
References: <20240319130547.4195-1-lakshmi.sowjanya.d@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20240319130547.4195-1-lakshmi.sowjanya.d@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH v5 00/11] Add support for Intel PPS
 Generator
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
 jstultz@google.com, thejesh.reddy.t.r@intel.com, christopher.s.hall@intel.com,
 corbet@lwn.net, x86@kernel.org, joabreu@synopsys.com,
 intel-wired-lan@lists.osuosl.org, peter.hilber@opensynergy.com,
 subramanian.mohan@intel.com, linux-sound@vger.kernel.org, tglx@linutronix.de,
 andriy.shevchenko@linux.intel.com, giometti@enneenne.com,
 netdev@vger.kernel.org, pandith.n@intel.com, eddie.dong@intel.com,
 linux-kernel@vger.kernel.org, mcoquelin.stm32@gmail.com,
 basavaraj.goudar@intel.com, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Lakshmi,


Thank you for your patch series.

Am 19.03.24 um 14:05 schrieb lakshmi.sowjanya.d@intel.com:
> From: Lakshmi Sowjanya D <lakshmi.sowjanya.d@intel.com>
> 
> The goal of the PPS(Pulse Per Second) hardware/software is to generate a

Please add a space before (.

> signal from the system on a wire so that some third-party hardware can
> observe that signal and judge how close the system's time is to another
> system or piece of hardware.
> 
> Existing methods (like parallel ports) require software to flip a bit at
> just the right time to create a PPS signal. Many things can prevent
> software from doing this precisely. This (Timed I/O) method is better
> because software only "arms" the hardware in advance and then depends on
> the hardware to "fire" and flip the signal at just the right time.
> 
> To generate a PPS signal with this new hardware, the kernel wakes up
> twice a second, once for 1->0 edge and other for the 0->1 edge. It does
> this shortly (~10ms) before the actual change in the signal needs to be
> made. It computes the TSC value at which edge will happen, convert to a
> value hardware understands and program this value to Timed I/O hardware.
> The actual edge transition happens without any further action from the
> kernel.
> 
> The result here is a signal coming out of the system that is roughly
> 1,000 times more accurate than the old methods. If the system is heavily
> loaded, the difference in accuracy is larger in old methods.
> 
> Application Interface:
> The API to use Timed I/O is very simple. It is enabled and disabled by
> writing a '1' or '0' value to the sysfs enable attribute associated with
> the Timed I/O PPS device. Each Timed I/O pin is represented by a PPS
> device. When enabled, a pulse-per-second(PPS) synchronized with the

Please add a space before (.

> system clock is continuously produced on the Timed I/O pin, otherwise it
> is pulled low.
> 
> The Timed I/O signal on the motherboard is enabled in the BIOS setup.

It’d be great if you documented your test setup including the name of 
the system firmware option.


Kind regards,

Paul
