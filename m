Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8PpoMyd0hWlzBwQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 06 Feb 2026 05:55:03 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D37EFFA2CB
	for <lists+intel-wired-lan@lfdr.de>; Fri, 06 Feb 2026 05:55:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BF3238122C;
	Fri,  6 Feb 2026 04:55:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9kVbYv9ptPKP; Fri,  6 Feb 2026 04:55:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2843081244
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770353700;
	bh=PlHFFdGueYam39J3KxtGgbJHGJBfEpbJWejTsKCw03Q=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=53HNvaBb/1LnT06Qk/LLLnZEwDDX953BbaPwZ/xd8EZ2346/BOwN1eH3KSSDUECrD
	 bylAuAee7QgSxhGwGsNEQ7VZHhhMZd2XD8RrDeTeNPqAl+/5YfJzNhAIVKUUMkJN8E
	 3QOCE+XXyYwpT6H3YGB6JVe34VFetZ34HE1GF4f6vIm2cOqm0PXKU+i1gDBNzY72Sc
	 dV3Zv7hfbWoRAitXDk00sq9j9eDUK0DKlnPa/oABTHfwZpzdlO8tTWp/xTBrvDe8M8
	 UO6GZbCrUJVdjqEZLLjJ54YxUSJOns2JvH018Rq2gQDF56qa53OgyaOIyDF3uzhBqd
	 MCrMH4SUVthmQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2843081244;
	Fri,  6 Feb 2026 04:55:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 34CF2470
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Feb 2026 04:54:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 16595400F1
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Feb 2026 04:54:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id scRyL4eAcwkL for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Feb 2026 04:54:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::629; helo=mail-pl1-x629.google.com;
 envelope-from=kmta1236@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D31D54000B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D31D54000B
Received: from mail-pl1-x629.google.com (mail-pl1-x629.google.com
 [IPv6:2607:f8b0:4864:20::629])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D31D54000B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Feb 2026 04:54:57 +0000 (UTC)
Received: by mail-pl1-x629.google.com with SMTP id
 d9443c01a7336-2a0d67f1877so1836965ad.2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 05 Feb 2026 20:54:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1770353697; x=1770958497;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=PlHFFdGueYam39J3KxtGgbJHGJBfEpbJWejTsKCw03Q=;
 b=dXdFvAtLa5V98r5+CQwq7LuAXat1mSbId5MTIxTLJQfdZpDY+oUp4Qb4MSnxuEf8IF
 XYcIUBDQVuyZCAUEGMAI0DzbnmhZR3+4PlVVurD91TfU0Aovr7G4SX0rhmDR0psxJiQG
 tA0kUTsVUYxFQWza5dAFD4zYLqX3gen+7cBIz4Tnf1TDvZ1RUvcBHn/+yAI0ZIPRFjQI
 0KyG9R0HkSsjJ/Xg9LpANrWKlIKU317wjubLPOcbhjX+ys4U9XcUaymNpQHLvglvB4b3
 gDrXu3lC3ppxfGC5eOrubijOm8S/CMKfw7R0pSkDJuvy6Lo47pSczPKTo0ynXEAgWNVF
 C6fw==
X-Forwarded-Encrypted: i=1;
 AJvYcCWnChhxBSi8K8OeD9MWCGrYQS6r1qjPAkB6Stf2kR4oAXUwYbzbGuXLuYPfXk4AiyrKTXAxGWXgUIKge6S3CZI=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yy0zYD7tVap/dMV5uQpRoyPNCbqmr4GnMki3/blih2PRhAkFQs1
 89GzJffAuiq4x45KxluuM6ZIHA5yGImJ2PskKiQ3k1AFDdEaNO05Th6O
X-Gm-Gg: AZuq6aJIx6sIzT6JlT0MuehX2uJIfpO+4g8BXUBB4b3bWT8/IrKlXc4BUDggaGZ0mMP
 Vho74EBRChEvxpzs8wqXHBvG7PERLyPiQJ5AhR8DQVfgAWwiPYoPh0j4VHoSlDzogADypPOcNKh
 kA606wd/e23nUfaA86rGMIeUUtEiVcsi91+IWGVts1O4arTaCEBJf6d9pb0kjNNsSKuXxXEjwOP
 cJaL5awnFG3pKdVVL/BCP/HrwHhKo6w8YY2pvpxtMNhASGGj/erEAWsOSDXaZrK0b7WtMRaE3/8
 jgmURKDwG1mYshO26ivctfy/cTRDFKLDndJvUbXK5bbjP4FgqDQc5y6XDiMIueiTZfB++rczq+7
 4GnbumeI+AZrhQUm8MRH0KanSpO9xdx4DqlpOklNxTUH4L+RHCbQS3I4CAvMB1NnoHEHMiD78CW
 UKJkeEibvnizQ/FI+p+6dEvZ+DtS8H106cznh6n7SjOImxLaQI5a0G5IeINA2SRmORLc5dyfwO
X-Received: by 2002:a17:903:b4e:b0:2a0:fe9f:1884 with SMTP id
 d9443c01a7336-2a95194aaeamr13854855ad.55.1770353696910; 
 Thu, 05 Feb 2026 20:54:56 -0800 (PST)
Received: from dpc2500057.. (fsb6a9315e.tkyc502.ap.nuro.jp. [182.169.49.94])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-2a952217ffdsm11599825ad.88.2026.02.05.20.54.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Feb 2026 20:54:56 -0800 (PST)
From: Keita Morisaki <kmta1236@gmail.com>
To: maciej.fijalkowski@intel.com
Cc: aleksandr.loktionov@intel.com, alice.michael@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 intel-wired-lan@lists.osuosl.org, kmta1236@gmail.com, kuba@kernel.org,
 netdev@vger.kernel.org, pabeni@redhat.com, paul.greenwalt@intel.com,
 przemyslaw.kitszel@intel.com, tony.nguyen@intel.com
Date: Fri,  6 Feb 2026 13:54:26 +0900
Message-Id: <20260206045426.3547398-1-kmta1236@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <aYSeb42KRzlc4SbA@boxer>
References: <aYSeb42KRzlc4SbA@boxer>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1770353697; x=1770958497; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=PlHFFdGueYam39J3KxtGgbJHGJBfEpbJWejTsKCw03Q=;
 b=iHP7Tdwq2YKY50Xx4jPWa78GT+sckTAVJ4Mj5CRmMNMXYCCxhURLIt+njMz+YVYhDW
 xMa26JMQ7V9gu92rGKHuc7hBJ6C5akecRmrkzSoLFJw2bhd+ENnGflhUf3yUqyzXpPFQ
 V0aQLeothVdx03zf0ru9+lQwKCUWusgqcjXKPLMA/y0qqEm9BeUG6Fwb9vvEAFT8PKMv
 oH3EsuKO/7N+inNIsu3GcamdJpzHhyhXo3Wcvvkj3nVdt37kz8V+mJzGxj2mJ7OTm7Ck
 QyKyRKc4Lh8G8Nig/w7mlXVKGTLzTNJ4X7G702AtYkg+LhUmMuV+PSgG4SyPdeTdJp5A
 fwjw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=iHP7Tdwq
Subject: Re: [Intel-wired-lan] [PATCH v2] ice: fix race condition in TX
 timestamp ring cleanup
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:maciej.fijalkowski@intel.com,m:aleksandr.loktionov@intel.com,m:alice.michael@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kmta1236@gmail.com,m:kuba@kernel.org,m:netdev@vger.kernel.org,m:pabeni@redhat.com,m:paul.greenwalt@intel.com,m:przemyslaw.kitszel@intel.com,m:tony.nguyen@intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER(0.00)[kmta1236@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[intel.com,lunn.ch,davemloft.net,google.com,lists.osuosl.org,gmail.com,kernel.org,vger.kernel.org,redhat.com];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kmta1236@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: D37EFFA2CB
X-Rspamd-Action: no action

> am I reading this right or you only modified flags to be bitmap on Tx side
> and Rx is left as-is?
>
> Would be nice to reflect this on Rx side as well, but I know it is out of
> the scope for this patch.
>
> Would you like to do a follow-up patch for that which would be sent to
> -next tree?

Yes, I intentionally left RX side as is because it seems less obviously that
rx flags are touched concurrently than tx ones.

But sure, it's a good idea to make the handling more defensive on the rx side as well.
I think it can be a follow-up patch as TX has more obvious race condition.

> Also your patch should contain the tree you are dedicating your work:
> [PATCH net v2] ice: fix race condition in TX timestamp ring cleanup

Didn't know that! Thank you for the comment. I will follow this in future
(I'm also happy to resend the V2 patch with the updated subject if you think it's).

> As for rest of the stuff it makes sense to me, however best if Paul could
> give his ack here.
