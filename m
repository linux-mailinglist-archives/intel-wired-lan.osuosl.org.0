Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id CDE7E823CBC
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Jan 2024 08:27:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5185160BE6;
	Thu,  4 Jan 2024 07:26:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5185160BE6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1704353219;
	bh=4tlXlEufC4GWb4djA7zy4fURTkr4HKxPw2taqwc9z7I=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=vOeEU709/2R+Rs4/IlIU8XY+EKZ5bxHP2gKZiPAarXbCozH+nGMHq+WdIxBEv+5Nq
	 CYMaECZTuechvXEaxNE+TcACgOs4e5/qkBgjA6+HF7H4jTh0FsDN5w8JPlZMORFr2L
	 jB8sDoFy8HaGi25gbqm9OPa1biNqVc6qRGQvwbtw/m3lp9rndEH4WYnSNPi3Y9sGGa
	 9V4h2AmUwL5fLdO9NIIHb6pPnUMER38zAPMipZJlFuLxj+2cpOM7pKO6PmM6N/zPPE
	 u9t4r0dq6dgIOmho88kEWUXn5R7J5CD64YI0jttDe4HEcBWFJBp2RLxyJhLsSjyK5R
	 EtUlOyrJmvSNA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XSs59QA2xpTz; Thu,  4 Jan 2024 07:26:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6448860B46;
	Thu,  4 Jan 2024 07:26:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6448860B46
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AC39B1BF422
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jan 2024 07:26:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8315D60B46
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jan 2024 07:26:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8315D60B46
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6EefD6midUMZ for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Jan 2024 07:26:51 +0000 (UTC)
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4145D60674
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jan 2024 07:26:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4145D60674
Received: from [192.168.0.224] (ip5f5ae9b3.dynamic.kabel-deutschland.de
 [95.90.233.179])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 16D6D61E5FE01;
 Thu,  4 Jan 2024 08:26:19 +0100 (CET)
Message-ID: <7bfd7069-8222-4388-bc1f-d4e77093b503@molgen.mpg.de>
Date: Thu, 4 Jan 2024 08:26:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Paul Menzel <pmenzel@molgen.mpg.de>
To: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
References: <20240103101135.386891-1-jedrzej.jagielski@intel.com>
Content-Language: en-US
In-Reply-To: <20240103101135.386891-1-jedrzej.jagielski@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1] ixgbe: Convert ret val
 type from s32 to int
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
Cc: Jacob Keller <jacob.e.keller@intel.com>, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

[Re-sent with diff removed, so message size limit of 90 kB of list 
Intel-wired-lan is met.]

Dear Jedrzej,


Thank you for your patch.

Am 03.01.24 um 11:11 schrieb Jedrzej Jagielski:
> Currently big amount of the functions returning standard
> error codes are of type s32. Convert them to regular
> ints.

Please make use of the full allowed text width of 75 characters per line.

Also please add the motivation. Why are regular ints better?

[…]


Kind regards,

Paul
