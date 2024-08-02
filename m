Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 224B9945FDA
	for <lists+intel-wired-lan@lfdr.de>; Fri,  2 Aug 2024 17:07:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C6A43612E1;
	Fri,  2 Aug 2024 15:07:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id j9TYMx0XHZBg; Fri,  2 Aug 2024 15:07:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 23A9960B5D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722611239;
	bh=nfyuTMNPkDWCL9I5uMPFKxVk6+FwsBMNlzHehj0YZ/M=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2LzG9RZfHxDlCVQXF9HC5nS2E/5eE41hX23m8q5CPnABBt7+zKjTWkbcApnjONTWi
	 1SO6GxMHiIufzJEkwVxKOkFReVwyIl681PMp/5ICm1RVZl1v51j6LfZzH5m4us8wnF
	 JQY7TJMCz/d0oipSHeH1D/cRk4qZTI/G2PTGj3a1cjwhcGcFPCnTuvhFEYy5hPbTBC
	 lGw4zeegN4KeerMRewMWKoHsW7vI82oz2iXJLQ7idNkLYPWE40sUN32+08POwFc6vJ
	 FI8moxblWuuhBw3I0Rfl2Tjv29kAsvTbVm1fsHfJ8Daj2jPg4jUmefAopjsBa8lXra
	 ISFlXa5p2inLw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 23A9960B5D;
	Fri,  2 Aug 2024 15:07:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9F1DA1BF232
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Aug 2024 02:26:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8BA1F4015A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Aug 2024 02:26:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ckg4t_joi129 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  2 Aug 2024 02:26:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::c31; helo=mail-oo1-xc31.google.com;
 envelope-from=yyyynoom@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A6E95400D2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A6E95400D2
Received: from mail-oo1-xc31.google.com (mail-oo1-xc31.google.com
 [IPv6:2607:f8b0:4864:20::c31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A6E95400D2
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Aug 2024 02:26:05 +0000 (UTC)
Received: by mail-oo1-xc31.google.com with SMTP id
 006d021491bc7-5d5d077c60aso3717300eaf.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 01 Aug 2024 19:26:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1722565564; x=1723170364;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=nfyuTMNPkDWCL9I5uMPFKxVk6+FwsBMNlzHehj0YZ/M=;
 b=Q9AGWW1cWz/zVbNFwxg1udVu8ztwwLis3K92AHGit+JhMA6CVUTRAFaWp6SJQLvq+D
 hJutfgvTxfi8dUBVH7A3uL37MA4PMeerTxxMqmQpFquRvNv/P+DB67p1XVUlnKmd2zZl
 H5mLrtd6Qt+2urGibkT5At+co/agV6iU61oCWVgDQ6w/NF9pBKwVpL8nAMWohoVSud+J
 qm/tWmgNTAlGgx8A7woor3R7aIDcdT7E2RswqnF/lng8Hf5eBor/BvB8RIS1+Nyzg5f7
 XKwWAOQe5/WU5omBSImb/lnLd7S1I2WHptlKqVv6PmOAmUxPh86tkOmn7Xk9cTJa/jnA
 ooXg==
X-Forwarded-Encrypted: i=1;
 AJvYcCX6zMJnBCLKPnEFmnUw2mF7aILthdb3SvEk80WSHwOwHCEsPMgHpcd5jLsAB/VHFULHE/lfDvNVyrz+96p1u6UKmZnQeGZOq+5KYnccUL7ggw==
X-Gm-Message-State: AOJu0YyeVLrNY1ZorqMC2OjkyaoMwoclp7yBLSH8Tz51ewq7MBq02DHE
 JnvinlofpZRrx0b5DZ5X1vhTS5aYdyjebL5UnbBES+fa9GrDT9Lx7UWOiKMpzXTnor/TjDBBp3D
 A4yekAc06nTcxUfWBx4V8dc8et7M=
X-Google-Smtp-Source: AGHT+IHXXXnzi6E9XbW8sxSJCtKQmNHMsr6KIsZI/uoU9mSZgfdMXs+KgK6tJ0JfP9Dvfhl6dJza/sADFiddQgSeIfA=
X-Received: by 2002:a05:6358:4907:b0:1a2:89:298c with SMTP id
 e5c5f4694b2df-1af3ba705cfmr176383555d.14.1722565563607; Thu, 01 Aug 2024
 19:26:03 -0700 (PDT)
MIME-Version: 1.0
References: <20240801134709.1737190-2-yyyynoom@gmail.com>
 <20240801140633.GA2680@breakpoint.cc>
In-Reply-To: <20240801140633.GA2680@breakpoint.cc>
From: Moon Yeounsu <yyyynoom@gmail.com>
Date: Fri, 2 Aug 2024 11:25:52 +0900
Message-ID: <CAAjsZQxh4ykAHTdPryLyv1kePXGB6jZ-mCXjmiCsBusw5ZGQsQ@mail.gmail.com>
To: Florian Westphal <fw@strlen.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Fri, 02 Aug 2024 15:07:17 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1722565564; x=1723170364; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=nfyuTMNPkDWCL9I5uMPFKxVk6+FwsBMNlzHehj0YZ/M=;
 b=Dcgcb3HcaZPxTeCe8E9zfjrYf/kijBEwZ7tGEDTivPOIRLyeyQheftZcdgvfZFunIq
 dedbYkV/oXNl+Me+Rw2JRwTKJHAzY3dxBce8w6dtwDYnvj8nIdBSuB1f3fGrZcZcU/X+
 601/EeZ9eMeq7abmoNOrjAVUXGkMC6ttMUorUQrKU/25iL1kqti1mNkQxcVdVODas80N
 FEcYq8sZO0gtWkE8EtjFkQB1CWn7OOM2mPufADR023v1hr+7PkKafd5sTIvLWt3ZF4i1
 tV/7FsOuFhnakeLP8GqrVNkTZgblf7zoKQT3bqjcMP6xXhi0HS15tDZ5psVSkNgJF/oa
 djOA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=Dcgcb3Hc
Subject: Re: [Intel-wired-lan] [PATCH] e1000e: use ip_hdrlen() instead of
 bit shift
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org, edumazet@google.com,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Aug 1, 2024 at 11:06=E2=80=AFPM Florian Westphal <fw@strlen.de> wro=
te:
> This helper needs skb_network_header being set up correctly, are you
> sure thats the case here?  ip pointer is fetched via data + 14 right
> above, so it doesn't look like this would work.
I read it once more carefully, and yes, you are right.
Sorry for wasting your time...
It is my first patch to the netdev subsystem.
So... I was too excited. It's all my fault.
Next time, I'll be careful and deliberate.

Thank you for reviewing.
