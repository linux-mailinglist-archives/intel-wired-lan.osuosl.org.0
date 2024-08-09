Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4893894D36E
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Aug 2024 17:25:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 56D1F841BF;
	Fri,  9 Aug 2024 15:25:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7Rc8-9Fgh4N0; Fri,  9 Aug 2024 15:25:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5F58D841AB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723217139;
	bh=y71pVoZKTdKKHdxGfKfSxKEi+h6PYacutsiEOdrN9Fg=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=gjBGAnMfVPfe7qRutGlFI/LCuz3sf3kW4ZPCkezl7qNPNfv37hy0h4s68RcxOHmor
	 mPvLTa0xY1mYksR5wFHqxXoeDybziKxviD76V8KlQjaO+SUm6039GqgKyJziTC+1cX
	 bH1mWQLEkVhfL6WzFcNWTldCy5YAiHS+WTYXnmtwrF3z6g2SlfD9fVBP4ahaPKdz0W
	 haKo9fEyZBGGyLlZUnKYBKjR7H4El63xX0+9z8tq92ArW1VJjQ1N0f3QRAYM09giuQ
	 AuIaK1D2o1SzcKN/wMvaDqUNSDyp2LH8B/KVxHhbk+MHA/7UV2RBugmA/2uFgqFD4h
	 Ik4B6W1R0jXkA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5F58D841AB;
	Fri,  9 Aug 2024 15:25:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2CB7F1BF282
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Aug 2024 05:42:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 18D1640979
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Aug 2024 05:42:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id c9RwHhiNTTgY for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Aug 2024 05:42:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::52f; helo=mail-pg1-x52f.google.com;
 envelope-from=daiweili@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0FD924093A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0FD924093A
Received: from mail-pg1-x52f.google.com (mail-pg1-x52f.google.com
 [IPv6:2607:f8b0:4864:20::52f])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0FD924093A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Aug 2024 05:42:20 +0000 (UTC)
Received: by mail-pg1-x52f.google.com with SMTP id
 41be03b00d2f7-7bd16405aa7so717284a12.3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 08 Aug 2024 22:42:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1723182140; x=1723786940;
 h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=y71pVoZKTdKKHdxGfKfSxKEi+h6PYacutsiEOdrN9Fg=;
 b=lSDv46PQlTci7eSyUBu1BbtYRl+nrD7nXhS75+dqPGmql/BE4ZWshoOlvgkgn98RLp
 ltKOf7KPFxg9rTIDKJNbslx8q2rFkM51EilzQCWHeQMGB31wQQPPz/eT2Qwp9uMV04cL
 FwYSJx07EcGsNYZ3yUdPgVr+n0PjQ3Vj+3+P5iFUsYXIxD3IHKKhV/SSKjWefNs0GxLR
 Zzlv2BrasN67t9O815lzziVjIsay2FD6M61WOxkc6VY+gG9NvRQtVf3H+34a2qxUy8Vl
 VDQkt6rFd29tDQcRjRLRhZwmkA+Xw+PRp50BZmMYjJS7T3SUT4p6Px7MmEFjsEjdnWDA
 te9w==
X-Forwarded-Encrypted: i=1;
 AJvYcCWcK5XsqDMrip/TzfTFXVJ9aOrK40HF1GPKhvizY5nnMP6iRA7TnrJJz8i6/VaoJkZfvg6lKvhAlVztBazJEvAaQbQJt0IxI4vVaYSYKtnPgg==
X-Gm-Message-State: AOJu0YzbKNHkkdFvzOctYZfVsNXRzf1HvlZavQwi4UOnRVKsgOZYTCqF
 jFfqu6kCkVGH2CVseRDV6pxXubces+Ui2d6vG9jvLBno/Lf3589nNjwWCfBcL18oE9cgHcaZGT2
 3PFejszMTNVu+QW77RbUvUlnRpjM=
X-Google-Smtp-Source: AGHT+IFIFF9mIsinZE9JHaj/JIl9r1ax+khm2LOD0ZgkOgZeK8ldLrm7kM9Xp9bIH9SLAAXyWuPQfr/zvUiCWajG1oE=
X-Received: by 2002:a05:6a20:c78c:b0:1c2:8e96:f767 with SMTP id
 adf61e73a8af0-1c89ff8080amr742333637.31.1723182140072; Thu, 08 Aug 2024
 22:42:20 -0700 (PDT)
MIME-Version: 1.0
From: Daiwei Li <daiweili@gmail.com>
Date: Thu, 8 Aug 2024 22:42:08 -0700
Message-ID: <CAN0jFd1kO0MMtOh8N2Ztxn6f7vvDKp2h507sMryobkBKe=xk=w@mail.gmail.com>
To: vinicius.gomes@intel.com
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Approved-At: Fri, 09 Aug 2024 15:25:35 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1723182140; x=1723786940; darn=lists.osuosl.org;
 h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=y71pVoZKTdKKHdxGfKfSxKEi+h6PYacutsiEOdrN9Fg=;
 b=leWxb0qInJqs9QE4/xUS365kK1dW3A1e1JEvAXUDFG5sk/p1C/76Wdlr9i4goECfwi
 tYRLx7loHKosvKkmDjtgiNBX3h6DOSCWjjWa5SBfVmNHAeaZ99/FEOuZQ6b4jBCV4BMw
 h2VGy5MKaUKV0IgVdYeodg43Tuh95bUseKDABJ0d+zgOF83djclfTjA/Ox4XqzOtyRTM
 Y42XBItnavCPETeaB8Do5SGinxc7/ZygS/6qvk6ipoBTrBtGLgmG4131E6eckRKvvwcH
 g6ktS7kLaHEu+sPg+NXrX/0DfoDdZOGXdLKC7R4VYafnCW9P5wdYDdPOAJzenpeVW2qV
 zw7A==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=leWxb0qI
Subject: Re: [Intel-wired-lan] [iwl-net v2 2/2] igb: Fix missing time sync
 events
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
Cc: sasha.neftin@intel.com, netdev@vger.kernel.org, richardcochran@gmail.com,
 kurt@linutronix.de, jesse.brandeburg@intel.com, linux-kernel@vger.kernel.org,
 edumazet@google.com, intel-wired-lan@lists.osuosl.org,
 jeffrey.t.kirsher@intel.com, kuba@kernel.org, anthony.l.nguyen@intel.com,
 pabeni@redhat.com, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

It appears this change breaks PTP on the 82580 controller, as ptp4l reports:

> timed out while polling for tx timestamp increasing tx_timestamp_timeout or
> increasing kworker priority may correct this issue, but a driver bug likely
> causes it

The 82580 controller has a hardware bug in which reading TSICR doesn't clear
it. See this thread
https://lore.kernel.org/all/CDCB8BE0.1EC2C%25matthew.vick@intel.com/ where the
bug was confirmed by an Intel employee. Any chance we could add back the ack
for 82580 specifically? Thanks!
