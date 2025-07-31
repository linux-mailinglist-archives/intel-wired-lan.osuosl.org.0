Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 15255B1700B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 31 Jul 2025 13:02:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B0A6C61615;
	Thu, 31 Jul 2025 11:02:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id knrD0mB1Si4w; Thu, 31 Jul 2025 11:02:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 29E3961798
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753959751;
	bh=5RrsDYRSGZWbgt+/toz822ZTd5rZMrQVtU/4uvgxrTc=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=RtyPwLxm6N/x+NJBjeO5YhgHIMsGuX3r767s1fc/bB7+XmtfxtgPoyGwd978e/HQ6
	 kWEnJOd6lBzY7WvWJyMmnSxfwqFlMBJzmncKQskXZ/T4bpV5+algrKeJKeTJltYc8H
	 GLlEG4NbZ4/3jN3kOeU9lhZ/NmsO86FtpvhLS9AL4jxY+z0ZdW5E6fR1ms2PQa9ixx
	 s+DqA2E4DNWSf2oDazjGFBWG+8Cs7VGTqWukG7BMeQIWFAZSRI2sBAUMass3BeR38F
	 Sc40JAnM08+5ZsNvN40Ktw/XT+I4DWZ8cpV8guY/vWx9bkdzFjgBppzKvcV/isIjZR
	 9U4Jzucd/kJ7A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 29E3961798;
	Thu, 31 Jul 2025 11:02:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 6435713D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Jul 2025 11:02:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 61D9A615E5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Jul 2025 11:02:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Zj4VpmyPDGSW for <intel-wired-lan@lists.osuosl.org>;
 Thu, 31 Jul 2025 11:02:29 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::436; helo=mail-wr1-x436.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 0713A614C6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0713A614C6
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com
 [IPv6:2a00:1450:4864:20::436])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0713A614C6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Jul 2025 11:02:26 +0000 (UTC)
Received: by mail-wr1-x436.google.com with SMTP id
 ffacd0b85a97d-3b785a69454so531433f8f.2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Jul 2025 04:02:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1753959745; x=1754564545;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=5RrsDYRSGZWbgt+/toz822ZTd5rZMrQVtU/4uvgxrTc=;
 b=m7CVWL6cB+maU1sG+1Llw/knHcvUilMo1Rowi3BeAAwCH423ULhoI6HJCFtXPvIj9K
 aqjljQ/Dp4x5kyzB7YTH9BfU4kKCo+uup58s8zaK8mSh3hgWdvrvPTI0Sa6757fneF5g
 d+/dXJ684hbgSVBp8HbZmTUR+RcwV+uC/RWNSip8NtowwOcGIIKvMmwmhupFyUkIS3vo
 gN+CSv9zzlGXKgY7xOIQj2fGrweDMROG9sKnzve9jgGukD+HN0Mhd3/dnVRS9K5dVgIv
 NzjbyZ3bCoqRIoztx3DDl16jTMHELcsYMDrnQGUi7Otu8Y3tAjtcKU/RYLwwGDOt4D1t
 2Wzg==
X-Forwarded-Encrypted: i=1;
 AJvYcCW0o6u1Rs9GXrdkfCmFP36kb5fXtbqeNCZSS83Cmtc3b2Od2TzlK23eKBt1W2ggVskTAwHqy3gwmin7EL9ST7U=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyB7QUNz5zQryHfEO4Km1nEFD2Xq+ehd1wFhGYERKnftcy9mbmN
 r1LCXT9uQMqIbdKfUOuoznju1Qkclma4q8Xb/2st681E6LlXqCf7eVCHL9fwQ+wB4eA=
X-Gm-Gg: ASbGnctTu4Ok/QlYGx+3HXesJOGJR4JjuuZ0hvjFnWEhj77mJ16jfWDYwibWR3r6Lt9
 C7vTnxgh9/TLXsI3B9TPtaJ26kLOJGpuULHasKGtR5QHNUcweK31/oU/PVYwTtrK6oUt1w8UsBb
 sRzrFzChEsgWSkbZV2SIrqQETaQdHA+mktJ+SwYpTAMWFO1uF1l3UYFtwOwGNXar6x7a8Ke8Vso
 mMRLFSp6UOYz9fjQlEN40mV+Hfg7vPe+7c+4LBNUdPh/ei++o/tQ8qjMowYvSdIb6TSlSJluHPl
 CyrLP2LsyawLTI6gikM9hHlEQgmwP4XjaboG2RZzAkM+lIaWrvnWJ5UgUIMD3sTvqKN96e7+oI2
 jgPD+DH/XmF2s/989n/ktSmJN9i75drUUelM=
X-Google-Smtp-Source: AGHT+IG2/YDknmEESe5rNKpjwCrNrfPKzRjwLoe34Qq7Sxv+j/EwOrCLSeP7CTB/gVBWYK4E+WkoyA==
X-Received: by 2002:a5d:5f54:0:b0:3b4:990a:a0d6 with SMTP id
 ffacd0b85a97d-3b794fd5a7bmr5115544f8f.19.1753959744629; 
 Thu, 31 Jul 2025 04:02:24 -0700 (PDT)
Received: from jiri-mlt ([2001:1ae9:6084:ab00:1d82:e38a:3dbb:d3d6])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-3b79c469b4csm2024096f8f.56.2025.07.31.04.02.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 31 Jul 2025 04:02:24 -0700 (PDT)
Date: Thu, 31 Jul 2025 13:02:22 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
Cc: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, 
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>, 
 "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>, 
 "kuba@kernel.org" <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>, 
 "horms@kernel.org" <horms@kernel.org>, "sdf@fomichev.me" <sdf@fomichev.me>, 
 "almasrymina@google.com" <almasrymina@google.com>,
 "asml.silence@gmail.com" <asml.silence@gmail.com>, 
 "leitao@debian.org" <leitao@debian.org>,
 "kuniyu@google.com" <kuniyu@google.com>, 
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Message-ID: <tmp2xu6wrgjk43oxzvzpt7gqb6tdgncwhhapjg7jkmhpb525zd@uxabkfcpbghg>
References: <20250729104528.1984928-1-arkadiusz.kubalewski@intel.com>
 <p4tnkuf3zh7ja45d4y2pas6fj6epbqdqdqtfai2vmyul3n43lf@v3e5dvvbphiv>
 <SJ2PR11MB8452713FE8051A2B18E742DE9B24A@SJ2PR11MB8452.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <SJ2PR11MB8452713FE8051A2B18E742DE9B24A@SJ2PR11MB8452.namprd11.prod.outlook.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1753959745; x=1754564545;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=5RrsDYRSGZWbgt+/toz822ZTd5rZMrQVtU/4uvgxrTc=;
 b=UP/Zyz2KtQ7O/l49OWsHcrXR1Fn1vxtoaDV4ypOCc6w6AO5O2da2iv282qTAZTBBJ7
 J4WMVxq0myClY0JF6VkvZcY+VPkCbqQK7XdweJ7zDmeXxO3jqPpnmyXVPMc/LJkUfn2g
 kmN1FW6JCqryClsZK95QgKVtOn2icfvw7n1uUZbjY4Q0Ah9en/k8XNb5GBS4sLCIOH6u
 zyPN/RveEfJbfMu7dCXg7Txom3QaDRDYNAgPvzt8klAiPeVUUvqe62fCe36lBnuTaoiU
 aJ+WbiNnl8Isq/X5l+mzX1XPrXi3Yhi7PuvCRY6UGgDueC9M9/t67bSOSC0ecOcci0mk
 4SCg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=UP/Zyz2K
Subject: Re: [Intel-wired-lan] [RFC PATCH] net: add net-device TX clock
 source selection framework
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

Wed, Jul 30, 2025 at 04:09:03PM +0200, arkadiusz.kubalewski@intel.com wrote:
>>From: Jiri Pirko <jiri@resnulli.us>
>>Sent: Wednesday, July 30, 2025 2:26 PM
>>
>>Tue, Jul 29, 2025 at 12:45:28PM +0200, arkadiusz.kubalewski@intel.com
>>wrote:
>>
>>[...]
>>
>>>User interface:
>>>- Read /sys/class/net/<device>/tx_clk/<clock_name> to get status (0/1)
>>>- Write "1" to switch to that clock source
>>
>>I wonder, if someone invented a time machine and sent me back to 2005...
>>
>
>Probably temporarily, but this was quickest to invent :S
>
>Creating a single DPLL device for each PF/port seems overshot,
>Could go with extending netdev-genl

That would be my first choice.

>Any other ideas?
>
>Thank you!
>Arkadiusz
>
>>[...]
