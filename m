Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id AB9AB97AFC5
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Sep 2024 13:40:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4AA87614AC;
	Tue, 17 Sep 2024 11:40:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZIN2g27uDWrR; Tue, 17 Sep 2024 11:40:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A566C614A4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1726573205;
	bh=ecEGHgyhHCw7IfP+WwTd7Ywh0L4XyrtJjcE9jri8+XY=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=v9FsRo9OfOtOwfnij9Lx71rVOIpEGJTdQYjS58bg+lWmglASQP7EZTwOXhOaFotfp
	 xvIv2lbwgOK+/VT09t6f/9ObjkTMBvof0McaiaXFFfZLmvtqmL9gplpPIKDVcoevMh
	 m/BABmYm57iqtX/UZcUr5DBZrdChYtsEkd4fZBUJe+e1moFa/X1KEaAajMsMiMEACO
	 K8Wyce41ZnQ6Ju3GoIOthHPxYQ0EjIkAYxHnSY1UD9zkbpueMluL/ROr298WncVNVF
	 KCDN7YqPKrAllB2wLUtg37XlkESBbvdHEKm0a+IAuHDW0MhmbGMYzDHEzlGpC19yQf
	 PPG/peYIFYCgA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A566C614A4;
	Tue, 17 Sep 2024 11:40:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0D5421BF842
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Sep 2024 11:40:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9AEA840F97
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Sep 2024 11:40:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JMuSL8ArCqpt for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Sep 2024 11:40:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::42d; helo=mail-pf1-x42d.google.com;
 envelope-from=jesperjuhl76@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 9D61040A50
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9D61040A50
Received: from mail-pf1-x42d.google.com (mail-pf1-x42d.google.com
 [IPv6:2607:f8b0:4864:20::42d])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9D61040A50
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Sep 2024 11:40:00 +0000 (UTC)
Received: by mail-pf1-x42d.google.com with SMTP id
 d2e1a72fcca58-7191f58054aso4514407b3a.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Sep 2024 04:40:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1726573200; x=1727178000;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=ecEGHgyhHCw7IfP+WwTd7Ywh0L4XyrtJjcE9jri8+XY=;
 b=VVeLdMhRlVq+Tl0y7DEOSOnsm1cCzg2eL9lzZoXl3AymbAqkwCtuz0els3Y4EylgWK
 mK/XOAKFqDBwjCX5f+1U+5mKmClxHzgWNRJCIeCYXHKK4sbmxLCenzRcAf5y8/y9qYQL
 aSebyT+7hzRcYzgSYq5lRdoDjjEMU0dwIweXU6rewPC5SSWjWOstaJpTNy6pPhUFbGe0
 vn2RPqQp84mBaHdowtOFLDnb+kMn86AVE8Epo1d9dgaNgEi840WdYwdWkZ/20XwQt8ak
 L2pjJ6f4wvJHTxZp5sAjk84+UQlm+zq79HGwH0LpSGNM0nQ/RufbTOTFCq3BYhMCiRRB
 Bsvg==
X-Forwarded-Encrypted: i=1;
 AJvYcCVZ5Zcj2822kIIYZz5FkDGvuE2+kIHL9ExSchZPtufPW5uSOCkI5OKrYmm99y+q0zePlx2uZWx7v/9WSH0sfBU=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxPkGxkxo56JUkaEcj2jiM9ZN0E79s+n0W70VWae3se75csui9F
 JN5/rxs3Dwafnm3mWw6ifGTSktDtDD75kAaOxIaIPnhViXQ18k3CsKQnzchsBzRDJCPuZNVDEeJ
 m9Qtr5pAMKBNdx7VpZVRbODAVBaI=
X-Google-Smtp-Source: AGHT+IHCMSs5WXFsoCgcNfwmckmR2l9g1Zpnl0GggwToNMhM5h5CcrQFTEe88Wn/ywZnZoFeosxT6h5vlyJjHf6q9GU=
X-Received: by 2002:a05:6a00:2d15:b0:717:8dd1:c309 with SMTP id
 d2e1a72fcca58-7192606d3c1mr24904345b3a.9.1726573199759; Tue, 17 Sep 2024
 04:39:59 -0700 (PDT)
MIME-Version: 1.0
References: <CAHaCkmfFt1oP=r28DDYNWm3Xx5CEkzeu7NEstXPUV+BmG3F1_A@mail.gmail.com>
 <CAHaCkmddrR+sx7wQeKh_8WhiYc0ymTyX5j1FB5kk__qTKe2z3Q@mail.gmail.com>
 <20240912083746.34a7cd3b@kernel.org>
 <CAHaCkmekKtgdVhm7RFp0jo_mfjsJgAMY738wG0LPdgLZN6kq4A@mail.gmail.com>
 <656a4613-9b31-d64b-fc78-32f6dfdc96e9@intel.com>
 <CAHaCkmfkD0GkT6OczjMVZ9x-Ucr9tS0Eo8t_edDgrrPk-ZNc-A@mail.gmail.com>
 <534406c8-80d3-4978-702a-afa2f33573f7@intel.com>
In-Reply-To: <534406c8-80d3-4978-702a-afa2f33573f7@intel.com>
From: Jesper Juhl <jesperjuhl76@gmail.com>
Date: Tue, 17 Sep 2024 13:39:23 +0200
Message-ID: <CAHaCkmcZ6tqj8zJjLERO6Ze4SrKNHBpGL8aOLwt6CsX8b4TSFA@mail.gmail.com>
To: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1726573200; x=1727178000; darn=lists.osuosl.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=ecEGHgyhHCw7IfP+WwTd7Ywh0L4XyrtJjcE9jri8+XY=;
 b=KozxQsU3Cy6tlzmJ/WyJGzhg/zJLdBPih9goUGMITQfE3u6X/T/5NGmWkgzp5W61C6
 BKhWrqGv9KoQNTUu0CEAxwdgat8iIE2pquvE3XjwxNMqz2dXXBBm5Ubb9yvi1u4eAo1d
 TDSZSOz4XbBzUYLKxT2w6+qQfLo+C/jm+9tLvAiwMesN6VsDD7Yk8AJTDOohlEBwrjjr
 8qHDQTZ6K6jXdAfElY5W3YtVG2ws0kxRQpQhPTaRADDEg4JEtJa2sZZ5YNwbqCk7PB9Q
 mZjs/v+fV9ES4nN8XdpEKciqRvgf7N8N1vqHlyyKXTLmGn5s5UQHXjT6BdQlfRt3pyzI
 UwVw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=KozxQsU3
Subject: Re: [Intel-wired-lan] igc: Network failure,
 reboot required: igc: Failed to read reg 0xc030!
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
Cc: Paolo Abeni <pabeni@redhat.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 intel-wired-lan@lists.osuosl.org, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sun, 15 Sept 2024 at 09:03, Lifshits, Vitaly
<vitaly.lifshits@intel.com> wrote:
>
> >
> >> 2. What is the NVM version that your NIC has? (ethtool -i eno1)
> > $ sudo ethtool -i eno1
> > driver: igc
> > version: 6.10.9-arch1-2
> > firmware-version: 1082:8770
> > expansion-rom-version:
> > bus-info: 0000:0c:00.0
> > supports-statistics: yes
> > supports-test: yes
> > supports-eeprom-access: yes
> > supports-register-dump: yes
> > supports-priv-flags: yes
>
> I see that you have an old NVM version, 1.82.
>
> In the recent versions, some power and stability bug fixes were
> introduced to the NVM.
>
> These fixes in the NVM might resolve completely your issue.
>
> Therefore, I'd like to ask you to contact your board vendor, Asus, to
> update the NVM to the latest version.
>
I'll get in touch with them and see if I can manage to get the
firmware updated. I'll reply back what happens and whether or not it
seems to fix the issue (after a while) - thank you for the
information.

- Jesper Juhl
