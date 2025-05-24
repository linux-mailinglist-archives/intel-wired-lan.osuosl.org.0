Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id ADCF6AC2FE9
	for <lists+intel-wired-lan@lfdr.de>; Sat, 24 May 2025 15:48:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0368960679;
	Sat, 24 May 2025 13:48:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YmUAGLoU7y_Q; Sat, 24 May 2025 13:47:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 79D876067E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1748094479;
	bh=ISM76n2Tnbqm5Bl3hfkRDKPNfioiCB7kuqIwIHhyVnw=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Y4JVkxbtGZrUDiVnHGKHMorQnPTFleuIR+t9HxiAHyA4bWpXwzNcqRQpmvJ0li7P3
	 0h6xU4SIFdnT6ENXjHpEhbqdsxT5EgfhJylIvrrGPNmkLvc1tPmXt6dkMhN6lgAPwW
	 0GqU40wKPTlbem2etAS6WeiZzvI4/uaoCgKoCxsZfBq3rBHDnlDeEaYZTQ3vz6cmzV
	 oGDtsr3cRJsxGbHUzUn0JGXTO/6aBOb3emZ2eNcBdqAAUNx6DD1pm2+JboUFW68tL1
	 +uCDN5WSZcdabY1EEmaY2cUZGcb2q7UyE1nMkfdGN6HarDZiLr2lva9x1L8g34sLbg
	 f7yZSlqi7xN7A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 79D876067E;
	Sat, 24 May 2025 13:47:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id B8C0D68
 for <intel-wired-lan@lists.osuosl.org>; Sat, 24 May 2025 13:47:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A75594057C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 24 May 2025 13:47:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kCcl1cA2c5ey for <intel-wired-lan@lists.osuosl.org>;
 Sat, 24 May 2025 13:47:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::f36; helo=mail-qv1-xf36.google.com;
 envelope-from=willemdebruijn.kernel@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org EDA2E40460
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EDA2E40460
Received: from mail-qv1-xf36.google.com (mail-qv1-xf36.google.com
 [IPv6:2607:f8b0:4864:20::f36])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EDA2E40460
 for <intel-wired-lan@lists.osuosl.org>; Sat, 24 May 2025 13:47:56 +0000 (UTC)
Received: by mail-qv1-xf36.google.com with SMTP id
 6a1803df08f44-6f0cfbe2042so9149606d6.1
 for <intel-wired-lan@lists.osuosl.org>; Sat, 24 May 2025 06:47:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1748094475; x=1748699275;
 h=content-transfer-encoding:mime-version:subject:references
 :in-reply-to:message-id:cc:to:from:date:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=ISM76n2Tnbqm5Bl3hfkRDKPNfioiCB7kuqIwIHhyVnw=;
 b=DtS8+JmZQz94ubjlWBPJVlWHrH9PMXtEu0T44mldYoW0FklSJ2tRQyJSyI7Y687uPe
 tRnIoMq0lCBnmCNddEIqdHwJGswYCxmuCsYtdN53c58OxXzPZwmNyMxsx/EqkFxPFZ8K
 GUgCgYUzb38Z6umBDASM5Us1nYPUQd2BwE9eWWMvqhiF1yiG+xSdeplE7Y60IAxoQnXc
 BdL5v7CNcXZUI7urYMecAFg9ZF7O4PcKxPIsmRKbk1u1EXno9XiVZF6BHqG53ztVO+45
 54BzU6NXiUtsaxvjC8H/UeTNbUa4rIis7ZehEaml2rAB25ctiz+T6abJwQK2YQf3oA0S
 cTPA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWiBBiRZ47pWoB9WK5tw22ngJJpjoliprqikcE9L9T1Db6YJdri11l1Q55uYYlsPJKOtqvfF/9vRcSkN6qJiAU=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyFUS6E1W61IYaF32OfJCn7BYr1VAjLyWjRObH2caNWZMTeyewd
 GkYbhr5s5+1C+majEFm3VQGlvJTYG/uKNdzJ7P9x6GNtMyHuIBzOb/iP
X-Gm-Gg: ASbGncsdPzsRN7K/x7ZoKxC2MmHtp7424EFjc0XNqtcjXownMMPIkcQGEYDP0UKRtpc
 d+mJa3WfaP1YYnF1ZN/mV6ngdthWA/4nyTAWxUZPTzBTY+07eetxaWNFZDO4IalcrNH+QB+M/0G
 LmjssYbfbUNoanqFElJGQcf+95Gp4ztoIcgWj2EbTEsSOhJ/7iUP3gaMTGxVTmmyyjmtf/LZ2QY
 gaellGm9lO8L0uUO8sCdD4WJQDczV954VxabI9UVaJVLvNyZcCMChBvpAbRejAmfrFSRhfTkz4T
 6Ew7oUJQQWTQgcFdWqz7EZijwzhU6WX+gzzzkgCIp20IemMAn9+xMUMNxpGz4YUiM73dDcAqv63
 Jm/N5xkgi3YrW/IZcTq7QYPc=
X-Google-Smtp-Source: AGHT+IF3yKcNUptcEJ2IBM88L6dQo/bzp2ojudQjSU+U7OFkoAwjgHK57u72T9CL3rhZx0AnifIdng==
X-Received: by 2002:ad4:5f0f:0:b0:6f5:438f:f4bc with SMTP id
 6a1803df08f44-6fa9d13e70bmr47229666d6.7.1748094475606; 
 Sat, 24 May 2025 06:47:55 -0700 (PDT)
Received: from localhost (23.67.48.34.bc.googleusercontent.com. [34.48.67.23])
 by smtp.gmail.com with UTF8SMTPSA id
 6a1803df08f44-6f8b0966159sm129281766d6.81.2025.05.24.06.47.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 24 May 2025 06:47:54 -0700 (PDT)
Date: Sat, 24 May 2025 09:47:54 -0400
From: Willem de Bruijn <willemdebruijn.kernel@gmail.com>
To: Milena Olech <milena.olech@intel.com>, 
 intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com, 
 przemyslaw.kitszel@intel.com, Milena Olech <milena.olech@intel.com>, 
 Karol Kolacinski <karol.kolacinski@intel.com>
Message-ID: <6831ce0a338c3_1e3c7c29496@willemb.c.googlers.com.notmuch>
In-Reply-To: <20250523155853.14625-1-milena.olech@intel.com>
References: <20250523155853.14625-1-milena.olech@intel.com>
Mime-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1748094475; x=1748699275; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:subject:references
 :in-reply-to:message-id:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=ISM76n2Tnbqm5Bl3hfkRDKPNfioiCB7kuqIwIHhyVnw=;
 b=jb//f/ha9yV5gzlmN0EEBtuiB/g/unPCRV4QcLr6gh5w2EjRCNqgAEl8yO2nvmErdg
 56GiffOMYxgbXIGr0nkKBWGs2lUCFBiA370ZUI+KAIFKcSQ8zJ2NIDbGM0J8oCtEYLUs
 HOK86Usn4jGEQuHIrgcQVQddnikYU8kFAL/E8nzf3KKAb+teXaCtPVVYZfKfzCv0pydF
 uuqfe0s/1Lt/OMuLKK749hYF812dU+saUE0WyYztVWRZPEhkBBnI5pXqGG8WbwTzI2mA
 /8YFHBBI3r9dACGBWozgrUWxId5i1czBALLu7GRE4wjAwKiFBXxbzIKN3tN37xElv6eV
 b8yw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=jb//f/ha
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] idpf: add cross timestamping
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

Milena Olech wrote:
> Add cross timestamp support through virtchnl mailbox messages and directly,
> through PCIe BAR registers. Cross timestamping assumes that both system
> time and device clock time values are cached simultaneously, what is
> triggered by HW. Feature is enabled for both ARM and x86 archs.
> 
> Signed-off-by: Milena Olech <milena.olech@intel.com>
> Reviewed-by: Karol Kolacinski <karol.kolacinski@intel.com>

Reviewed-by: Willem de Bruijn <willemb@google.com>
