Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 73F988AD422
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Apr 2024 20:42:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1619860ABE;
	Mon, 22 Apr 2024 18:41:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7lbHa2eKlnF4; Mon, 22 Apr 2024 18:41:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2D730608D8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713811318;
	bh=leUb4bDsbNsJiWHpu4VZ7m1hUfv33Yk0Xnjpf7izt78=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=sJoQf921EB8WJc++0laY/oM6X5O+ehHLRWZKi5A4ywp8DZaReAStOH3npzZcRfzkQ
	 b4/TSGnIRazrJIg0iC9/hKmu7Z7RRPEYPs/LhMJIqmTp6t5nQXmTUqDu+1eszvFGbp
	 npL8GcDbzTrKO4nBeN76bjpWU68Yr5GorRIcbBFsP2FED55Pm500tuxZP7zJq+9YmC
	 t0B5UCgWg4Y9Z2YUWuoiSJwP1c4uUObB9OvbK5ProzCLtohJfQHp6J+p9pUovMRBmF
	 s++Flhe/nBgtI/FdWVnbodZhem7akocrNKzY7YxEBT7qDyfg48REf290/G2w26gBv1
	 OFU6HB9YyKqrw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2D730608D8;
	Mon, 22 Apr 2024 18:41:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9A9F31BF35C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Apr 2024 18:41:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 92D9340B60
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Apr 2024 18:41:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kFvbM-zxquRr for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Apr 2024 18:41:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::435; helo=mail-pf1-x435.google.com;
 envelope-from=stephen@networkplumber.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 021BB400CB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 021BB400CB
Received: from mail-pf1-x435.google.com (mail-pf1-x435.google.com
 [IPv6:2607:f8b0:4864:20::435])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 021BB400CB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Apr 2024 18:41:53 +0000 (UTC)
Received: by mail-pf1-x435.google.com with SMTP id
 d2e1a72fcca58-6ed32341906so4606080b3a.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Apr 2024 11:41:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1713811313; x=1714416113;
 h=content-transfer-encoding:mime-version:message-id:subject:cc:to
 :from:date:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=leUb4bDsbNsJiWHpu4VZ7m1hUfv33Yk0Xnjpf7izt78=;
 b=UiKDI9YMIqt3Hg87jx2pgsqCuChMQ9Cb69yLcatcgpPTYdVYpnt15zAGw5jLC0sdVv
 IdteSbvatI5OppfF3oUtdkc/9zCcQSKFhX4jMzh4PGWa6foeq/AQEiPViCuGG2zmwpxs
 Q/rWtLgIgjMw5uZZw5LU7Su7utWjMVuy0gCGUkVAef1zFbN5GPuPxqBIvGAGbAAriONF
 GX0mKlhCi+Z70zlB5aq9NQFnrOOYO+NzmDYBz9f8s9VNggCClW7fOd1EwrA9TZnu4m6m
 df4AdY6MsORyX4OhsYgX6jmtdqtzEtkLnlZUMK9LUKeHLEqAOsY11n4C1SWfWFuuZBVv
 xdSQ==
X-Gm-Message-State: AOJu0YwH0MVLZ9bSofjtEZ64fcUCV7hugCSfYVui6SYCocsL6NLBa8+m
 2AXX6Ol2FkQljpsX2wQWbvU4rvpaHGkIYdpwfOzwPvxKCT67i6MPrwmthxWquJE8h7UvYY/62LB
 HVNY=
X-Google-Smtp-Source: AGHT+IEh1ouLTsNjOpltYYMmI5QjeQ7cuo7/bWb5zWmeaGtbTqa+5Sob8zattweClvsMyAwddn8oBg==
X-Received: by 2002:a05:6a21:3a44:b0:1aa:59ff:5d31 with SMTP id
 zu4-20020a056a213a4400b001aa59ff5d31mr13278451pzb.0.1713811312253; 
 Mon, 22 Apr 2024 11:41:52 -0700 (PDT)
Received: from hermes.local (204-195-96-226.wavecable.com. [204.195.96.226])
 by smtp.gmail.com with ESMTPSA id
 u18-20020aa78492000000b006ed5ffc3751sm8146691pfn.139.2024.04.22.11.41.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 22 Apr 2024 11:41:51 -0700 (PDT)
Date: Mon, 22 Apr 2024 11:41:48 -0700
From: Stephen Hemminger <stephen@networkplumber.org>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>
Message-ID: <20240422114148.39b71a63@hermes.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=networkplumber-org.20230601.gappssmtp.com; s=20230601; t=1713811313;
 x=1714416113; darn=lists.osuosl.org; 
 h=content-transfer-encoding:mime-version:message-id:subject:cc:to
 :from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=leUb4bDsbNsJiWHpu4VZ7m1hUfv33Yk0Xnjpf7izt78=;
 b=ZhFVH+XJZodsY3x9yQKDFhcvCQ9JkyccI5f+ytyI0ttREo1v1OAcQLtRYv7MNObTfE
 NLNddC0WntO3+8rzREEObKVrWc+v2g/Ogb3cqCHqS+6i3f+kLvwgvls5TnfKqkRZGkA4
 R9LQ3ATIiU/e3p3O/KV7a9KMGavFvY9aN87v1hBrvdj9lJgdMRISw8wIv4hfr1YaCiGN
 ZB0hfPUv1AaJGWUWP1PqPsrgxlbVsWO6ABvjK2E4P81j0GfULyTpaxIO9Xyw8YYkpTgU
 Xi1u5WN3i4SisPHc3/yTbgUnXdIIKzTdx97qFvE5XN7TnhKJ2I/j8uvdRZ0oY4hqaQ2P
 1Dgw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=networkplumber.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=networkplumber-org.20230601.gappssmtp.com
 header.i=@networkplumber-org.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=ZhFVH+XJ
Subject: [Intel-wired-lan] Fw: [Bug 218761] New: e1000e: One core of cpu
 reach 100% usage, after connecting ethernet.
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
Cc: intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



Begin forwarded message:

Date: Mon, 22 Apr 2024 18:39:38 +0000
From: bugzilla-daemon@kernel.org
To: stephen@networkplumber.org
Subject: [Bug 218761] New: e1000e: One core of cpu reach 100% usage, after connecting ethernet.


https://bugzilla.kernel.org/show_bug.cgi?id=218761

            Bug ID: 218761
           Summary: e1000e: One core of cpu reach 100% usage, after
                    connecting ethernet.
           Product: Networking
           Version: 2.5
          Hardware: Intel
                OS: Linux
            Status: NEW
          Keywords: trivial
          Severity: high
          Priority: P3
         Component: Other
          Assignee: stephen@networkplumber.org
          Reporter: rafal200725@gmail.com
        Regression: No

When I connect ethernet to my laptop after it booted, one core of cpu reach
100%, and system start being unusable, command stop working.

On kernel 5.15 LTS, theres no issue, only on highest.

Bug appear for me in 6.8.7 stable and 6.6.28 LTS. (but may also on anothers,
that only I tested). It may be ralated to new commits from about 2 weeks ago,
that changes something in this driver.

Output from "lspci -k | grep -iA3 Ethernet":
00:1f.6 Ethernet controller: Intel Corporation Ethernet Connection (4) I219-LM
(rev 21)
        Subsystem: Lenovo Device 225d
        Kernel driver in use: e1000e
        Kernel modules: e1000e

In advance sorry for my English I'm still learning this language.

If you need more info, just tell. I'm newbie so you need to guide me, to get
some logs etc.

-- 
You may reply to this email to add a comment.

You are receiving this mail because:
You are the assignee for the bug.
