Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F3F7C8E27
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Oct 2019 18:21:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9C30086DAB;
	Wed,  2 Oct 2019 16:21:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id X+Fa4jeFCw7T; Wed,  2 Oct 2019 16:21:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C74CD86DAE;
	Wed,  2 Oct 2019 16:21:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D5A2C1BF969
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Oct 2019 16:21:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D0A0B86216
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Oct 2019 16:21:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1SPk8zQFfyVS for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Oct 2019 16:21:20 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A6B9D832C6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Oct 2019 16:21:20 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id a24so12137481pgj.2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 02 Oct 2019 09:21:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pensando.io; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=eeyTOg17q9KxMpdnKIdB7cChcxt684Nc0Z/pTXOp8y8=;
 b=EP1pH7wpiE0TYKvhUm2wWyzT1PRmnrtJW2S9yGvLz+UQS5H6/InXwE+x7vcQn0YkA8
 FvYrIpIaayfSv4Ts2FZYpj3clWi/NGLG/G3R7XP1QXkQqsFA+p03EIgoGlgNePuVOKte
 EV2xbhJPg+0sbcZIjH2QWZyQcxkXcsqBDBFBGsAG+au4XuTyaRh7n3OKaPHzKopsBy0D
 UKEmC1UUp5TnLJB/BzgH+VR7a60BkAmOYCpo8QG8Zz0WcDX/gt+ScP5hZv0bfiIbfid5
 VtIAGaDfjpZDJsmbs5y6TakZJvKeAeAbclrWPjG2I6CjzEY6C4bLgws3vjG9QhFFf/wO
 LjJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=eeyTOg17q9KxMpdnKIdB7cChcxt684Nc0Z/pTXOp8y8=;
 b=JlWjITBTqAcLwNOR3hO96Mz21Y/7QQ+n/haKfNXNZM1LbgHj3Cy+HU8zgbZQv68522
 eDBOpqweawZjJiNG67nSx6RCnPLDX/AmRziijgv1HLhJeOdL0A/+15aoWbHDs50UCVNj
 OmLzp2dW80TW6pIFm/lnqqPKPCfx8f3YRChlD6fqxMcdRDRrnJFPqqOPcWlDiG/iu68t
 h8ZtMtG/pulb/DWXhzsqb/JzmsZmtma239nJxgLdEsc4M8fqvTTCmsF40bYGi8/TB/jX
 wlP6ceI8Yhvi9ECN7fvv4QDW96ogvUYppUEc+Z9g+2ADUt/mWC3HucvVZX587ZYwO0w1
 w1xg==
X-Gm-Message-State: APjAAAXdk4cgYJdODf9ZKeIzF4hnzOnHM9X4G3eOZWpnf4yHKmwsgpUH
 1Fvp9mgcl6ndWtgAUXMb7tys6g==
X-Google-Smtp-Source: APXvYqxrTJaVirNXUIMjjQQYz+vd4XBrvrCFGiFDXmev6sjlsTLcobvsJWUnNNcWVcQJlboCNdrkOA==
X-Received: by 2002:a62:e817:: with SMTP id c23mr5436656pfi.230.1570032873121; 
 Wed, 02 Oct 2019 09:14:33 -0700 (PDT)
Received: from Shannons-MacBook-Pro.local
 (static-50-53-47-17.bvtn.or.frontiernet.net. [50.53.47.17])
 by smtp.gmail.com with ESMTPSA id z25sm18095592pfn.7.2019.10.02.09.14.31
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 02 Oct 2019 09:14:32 -0700 (PDT)
To: =?UTF-8?Q?Jonathan_Neusch=c3=a4fer?= <j.neuschaefer@gmx.net>,
 linux-doc@vger.kernel.org
References: <20191002150956.16234-1-j.neuschaefer@gmx.net>
From: Shannon Nelson <snelson@pensando.io>
Message-ID: <1fd5d5df-30ea-2545-daf6-575473879cd6@pensando.io>
Date: Wed, 2 Oct 2019 09:14:31 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191002150956.16234-1-j.neuschaefer@gmx.net>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH] Documentation: networking: device
 drivers: Remove stray asterisks
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
Cc: Jonathan Corbet <corbet@lwn.net>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Pensando Drivers <drivers@pensando.io>,
 "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMTAvMi8xOSA4OjA5IEFNLCBKb25hdGhhbiBOZXVzY2jDpGZlciB3cm90ZToKPiBUaGVzZSBh
c3Rlcmlza3Mgd2VyZSBvbmNlIHJlZmVyZW5jZXMgdG8gYSBsaW5lIHRoYXQgc2FpZDoKPiAgICAi
KiBPdGhlciBuYW1lcyBhbmQgYnJhbmRzIG1heSBiZSBjbGFpbWVkIGFzIHRoZSBwcm9wZXJ0eSBv
ZiBvdGhlcnMuIgo+IEJ1dCBub3csIHRoZXkgc2VydmUgbm8gcHVycG9zZTsgdGhleSBjYW4gb25s
eSBpcnJpdGF0ZSB0aGUgcmVhZGVyLgo+ClsuLi5dCj4gRml4ZXM6IGRmNjliYTQzMjE3ZCAoImlv
bmljOiBBZGQgYmFzaWMgZnJhbWV3b3JrIGZvciBJT05JQyBOZXR3b3JrIGRldmljZSBkcml2ZXIi
KQoKQWNrZWQtYnk6IFNoYW5ub24gTmVsc29uIDxzbmVsc29uQHBlbnNhbmRvLmlvPgoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxh
biBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5v
c3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
