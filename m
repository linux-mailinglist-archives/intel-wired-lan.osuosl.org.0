Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A9623CBF542
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Dec 2025 18:59:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5CD8880F59;
	Mon, 15 Dec 2025 17:59:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id c2GO3xDBibmB; Mon, 15 Dec 2025 17:59:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4D15C80AFF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765821590;
	bh=I94Aq9J9oeQ3d4zMJRDc3HsLz0QlySonGNftj9fAHw8=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=BnUY8TJBhCurCsgSGglPo6+Ysz1+0yEALAvkJBsJzBOM9hf4F2xVQaPahlaP8epHF
	 ZBMepZQg00Fdo805Ju7iTYyavL0BSxtgmoCyRUgY3lJf4IioyJsUhgcRTO1NnHBZQv
	 nahoLZzzzMgfatTKlMZ2f5mTaQk8Y18B32hn6vVJ1pTvKCvcM/NvrXEeX24RxfixcN
	 d77X5FF8+Y9cVcm8IESEyScm5GJFN1Fode3jA+4iH3rhwFPgfgpWlkawnxWYh0sdQg
	 dkUqT4B1zuCOrFaG1/vXOOhTq1W6T6a+l7e+dK3YAkggZfnK7Sbf5Imxe6M7hvcTwL
	 PSX2S8X0ldWNA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4D15C80AFF;
	Mon, 15 Dec 2025 17:59:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 7795672
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Dec 2025 17:59:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 693A560861
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Dec 2025 17:59:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3acBXsTcDpX4 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Dec 2025 17:59:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1133; helo=mail-yw1-x1133.google.com;
 envelope-from=chaas@riotgames.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7C32060E85
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7C32060E85
Received: from mail-yw1-x1133.google.com (mail-yw1-x1133.google.com
 [IPv6:2607:f8b0:4864:20::1133])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7C32060E85
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Dec 2025 17:59:47 +0000 (UTC)
Received: by mail-yw1-x1133.google.com with SMTP id
 00721157ae682-78e6dc6d6d7so32194447b3.3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Dec 2025 09:59:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1765821586; x=1766426386;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=I94Aq9J9oeQ3d4zMJRDc3HsLz0QlySonGNftj9fAHw8=;
 b=bHw37FBoXZNrkxVl69sfOPG0UaXgQFC2UU9BzmuaBVOh5dBU8GcbtHwWaesxQmXOXG
 pbbdcqvyffUJHAMcogkKfBX21lzqRpHUc2/RCEGI0odXb3p6V15F1xLnTYQbAA2bnAzQ
 bRwhaOKH9KlY5iCYJXVnxE0uacqoWbhFaWHo42d1MWlEVe4n7wlTLgjBKZcJLEi+ehrh
 DK0tqzrs2gC5yQ8e4RxI3FCvROqOrrlIy0itpYNlhzLM0IjRHmcZuTYY718Wg+1imdSG
 bcEcAWVPHqwrwzSMxJ8mOGFsAJI/kNrCsiPPOZPPv1nXO0y6r5iR6BJLxISw9wNNl6gG
 cJpQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVWP7XHvzkVJsBCHMXFyj/Bc0Xh5bqu9pn1Sh+WUjvmuABWAv1q3WhIwzEMRNLvJTFN+whzRxF1R6w7wwYDc+A=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxzmrqaX2X1+UvfTYgUhzx4UhTl909MuwVswKF9bHfOy1voSFja
 ToyxFhptiXLJmgj+fvmcuvtTEYz7anXuf2jGF+b3jj3XwU8IZL4+4taIH5dJBQXjOl+IvKWTYIs
 3ePlf1wty1U1ZkA8Z8ZzKfG7B3YnvCYsoYgLy3MXEcQ==
X-Gm-Gg: AY/fxX4W4e0jh8ZO2F63tHLVF9bHJO97agQN2wSfn19SHQcb0SMBdJM6A35RfR0sBcq
 HvGVAwbGsaTdciv2j7x7fSyQ5SaipZUGzod5pIxzJ6GVOmJq1dLqVih+3Y2BdBBG4td6Q8INo8S
 FYKEMegohAVYlq4qDHFJYn2wmB7oH0imR7wIwaPFGJMwFhSS/4svolgx6Qi2852LNJ91fJHXRUw
 G6pbSvtHyff65epB6dtPpYKVLmVKhw2sS3dCj93jSRNmREeCo8DM+D9DGOsUkEEPXgc4c501w==
X-Google-Smtp-Source: AGHT+IHP0C56FV3OMQJ3oSJZujQ11oK/ho+SXlxjeQngz5OiRFIplS0yEVUIcjW0Jg2645GGhETkV1LfJ8NAWoXWa2M=
X-Received: by 2002:a05:690e:191a:b0:644:7182:daab with SMTP id
 956f58d0204a3-6455567beddmr8840168d50.89.1765821586156; Mon, 15 Dec 2025
 09:59:46 -0800 (PST)
MIME-Version: 1.0
References: <20251213002226.556611-1-chaas@riotgames.com>
 <20251213002226.556611-2-chaas@riotgames.com>
 <007b4664-acce-4e14-b284-a36dd3a88e8a@intel.com>
In-Reply-To: <007b4664-acce-4e14-b284-a36dd3a88e8a@intel.com>
From: Cody Haas <chaas@riotgames.com>
Date: Mon, 15 Dec 2025 09:59:35 -0800
X-Gm-Features: AQt7F2rRTafpK9F-Uy7yCKfrtdJmlMVHKRNlpyjlNgoCcp_0FDWeJ21XSrz53MQ
Message-ID: <CAH7f-UKErFLc2MMQSgVeGLxHcfF4ZsAC4-QfLSSzf_3y+-uaEQ@mail.gmail.com>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: anthony.l.nguyen@intel.com, andrew+netdev@lunn.ch, davem@davemloft.net, 
 kuba@kernel.org, pabeni@redhat.com, netdev@vger.kernel.org, 
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=riotgames.com; s=riotgames; t=1765821586; x=1766426386; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=I94Aq9J9oeQ3d4zMJRDc3HsLz0QlySonGNftj9fAHw8=;
 b=f9+SYU5nDWcQee0m8aHTGcPBbTcAhAwVkcEF4ZIvhjNQrc2ad0P4YMhQkfHgUfM4/e
 D1GAYE2HC0bZmBXneRD2g9cDrmoaCw7E61h8SQZ5GL/bmUNV0RcLI9mK9MrU9hbMpyLt
 0QjAtnritCKQUcP6pRCP5G0ph/Yf7jGxTYgMs=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=riotgames.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=riotgames.com header.i=@riotgames.com
 header.a=rsa-sha256 header.s=riotgames header.b=f9+SYU5n
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 0/1] ice: Fix persistent
 failure in ice_get_rxfh
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

On Mon, Dec 15, 2025 at 5:18=E2=80=AFAM Przemek Kitszel
<przemyslaw.kitszel@intel.com> wrote:
> thank you for the fix,
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>

Thank you for the review!

> next time please do link to the previous revision and add a changelog

I'll take note and make sure to add it next time! Thank you for the feedbac=
k

Cody
