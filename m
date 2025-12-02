Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BBBAC9B61A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 02 Dec 2025 12:53:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8953260BCC;
	Tue,  2 Dec 2025 11:53:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ww_WX0GFTxSo; Tue,  2 Dec 2025 11:53:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 032E960B94
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764676433;
	bh=ZHh/ud9FRmanr46WSBni01SOaM7tOAt755gj2s5+FCY=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=KX1OkNqS7u0YZl4tQVw32ciW2ooPA6CZy/o9z8lD2SUlacNR8R4Ou8x2ZqnXUM1HH
	 OigdrbQn0xeQYwiS6pohyncQbRZXfKe+p2KqES5bjouIMQvY4WMRRao6ZO/l4jJu0n
	 +aShJD5G+XgG+c7mUhGqnnnjfRvaefZQN5uh64VXNPlrRpBjn5nM38Is0nQIye3aJf
	 XzdlBJG0l2hOeGogifyRwEalROQDigvwawzI6N0sbIIgd+hGaVtY57e+eqV4kP+gN5
	 3Anjqxnq+hX4Nr5OIUqw+uZAZeENry/hxhkrLCAZRA6tdsE03r/ILSLaHwmQp5uNIs
	 mavHoCnfY1cZg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 032E960B94;
	Tue,  2 Dec 2025 11:53:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 23E55E4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Dec 2025 11:53:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F3A91403F6
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Dec 2025 11:53:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MY84Hmgu_N5n for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Dec 2025 11:53:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org EB9A5403E9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EB9A5403E9
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EB9A5403E9
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Dec 2025 11:53:48 +0000 (UTC)
Received: from [141.14.220.42] (g42.guest.molgen.mpg.de [141.14.220.42])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 91DB6617C4F8A;
 Tue, 02 Dec 2025 12:53:11 +0100 (CET)
Message-ID: <a4ea0043-9ee1-4b9d-a2b3-811c36b12ab8@molgen.mpg.de>
Date: Tue, 2 Dec 2025 12:53:10 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Guangshuo Li <lgs201920130244@gmail.com>
Cc: Jesse Brandeburg <jbrandeburg@cloudflare.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Florian Westphal <fw@strlen.de>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Tony Nguyen <tony.nguyen@intel.com>
References: <20251201034058.263839-1-lgs201920130244@gmail.com>
 <7917b0db-82b7-4a75-91cd-d3b6b0364728@molgen.mpg.de>
 <CANUHTR9o-wzkSzYeRwQvu-MEdYXQ4tbNXvDD2WyCfA1MGCG=Bw@mail.gmail.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <CANUHTR9o-wzkSzYeRwQvu-MEdYXQ4tbNXvDD2WyCfA1MGCG=Bw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH v2] e1000: fix OOB in
 e1000_tbi_should_accept()
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

Dear Guangshuo,


Thank you for your quick and insightful reply. (No need to resend this 
often.)

Am 02.12.25 um 12:34 schrieb Guangshuo Li:

> thanks for your comments.
> 
> ----Do you have reproducer to forth an invalid length?
> 
> Yes. The issue is reproducible with a concrete system call sequence.
> 
> I am running on top of a fuzzer called PrIntFuzz, which is built on
> syzkaller. PrIntFuzz adds a custom syscall syz_prepare_data() that is
> used to simulate device input. In other words, the device side traffic
> is not coming from a real hardware device, but is deliberately
> constructed by the fuzzer through syz_prepare_data().
> 
> The exact reproducer is provided in the attached syzkaller program
> (system call sequence) generated by PrIntFuzz, which consistently
> triggers the invalid length and the crash on my setup.
> 
> (The attached program is exactly the sequence I am running to
> reproduce the problem.)

Thank you for attaching it. Excuse my ignorance, but how do I run it?

> ----Should an error be logged, or is it a common scenario, that such
> traffic exists?
> 
> In normal deployments, I don’t expect such traffic from a well-behaved
> I2C device. In my case, the malformed length only appears because
> PrIntFuzz is intentionally crafting invalid inputs and feeding them to
> the driver via syz_prepare_data(). So this is not a “common” or
> expected scenario in real-world use, but it is a realistic
> attacker/fuzzer scenario, since the length field can be controlled by
> an external peer/device.
> 
> Given that, I think the driver should treat an invalid length as an
> error and fail the request instead of trusting it and risking memory
> corruption.
> 
> Regarding logging, I’m fully open to your preference. From my point of
> view, logging this as an error seems reasonable, because it indicates
> malformed or buggy input from the device side. However, if you expect
> this condition might occur more frequently in practice and would
> prefer to reduce noise, I can switch it to dev_dbg() or even drop the
> log entirely.
> 
> Please let me know which logging level you would prefer, and I will
> update the patch accordingly.
Then I’d suggest to add an error message with error level so people 
notice and can take a look.


Kind regards,

Paul
