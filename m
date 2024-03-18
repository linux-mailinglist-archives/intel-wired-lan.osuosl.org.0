Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9460E87E4CB
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Mar 2024 09:11:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AF45C4057B;
	Mon, 18 Mar 2024 08:11:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TVud1Gct87RL; Mon, 18 Mar 2024 08:11:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 964B740586
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710749462;
	bh=E4DNi1tThxPrAjwj3MNLTkspc0oafwDCMGAENKTid3c=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=JKL1bOdkuOO8A38hlwoSjdwgzErty/+bV2n6n6bhLqHLiHlYrWcWUtjiRi8Oq/YlV
	 +k9+Zf+d5U2NQ2Cbvlvhu8SR7XLmKIpbOQVaoKFzNtpj0xpky5Rv5Ce0FPYl91pIEi
	 ce7xxzVVvsG8GsZtMqzEk32ubvVgKLutKM7DriBIkHgDKM1qixsrYn5CkLeQdM9XGl
	 foDBjD4k4kRuj7pL+a+LQX1+KRL7DhN6JQQeol9koLYHmHtknJZj7Uo6Hjx7stABmf
	 Oa5/OWhJfbsCFiuypmL0Hml6B15xNFFBP0jnqV/3IkoWwu2KAquVNJKrlgYUdSdYt3
	 c5BfDi9tlZlqA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 964B740586;
	Mon, 18 Mar 2024 08:11:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A6A851BF39A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Mar 2024 08:11:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9156440572
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Mar 2024 08:11:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id s4EclSV1p73q for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Mar 2024 08:10:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::536; helo=mail-ed1-x536.google.com;
 envelope-from=dan.carpenter@linaro.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D23C6404AF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D23C6404AF
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com
 [IPv6:2a00:1450:4864:20::536])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D23C6404AF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Mar 2024 08:10:58 +0000 (UTC)
Received: by mail-ed1-x536.google.com with SMTP id
 4fb4d7f45d1cf-568d323e7fbso1045060a12.3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Mar 2024 01:10:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1710749456; x=1711354256;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=E4DNi1tThxPrAjwj3MNLTkspc0oafwDCMGAENKTid3c=;
 b=h7VXo76iW7SXplKoLiUMY0SOHFA3cH6OWr32O8pNJ0ZzWpb3KOrQ/7inZJSlo4QzC5
 sP/EJSsXdqz1fJKVRrghUiZnlWFgVXrBLmJ/2d11EjGYNB0W1jGvh6Ry0Yv4cum+eWzn
 QsyKmsIvYrpT1oYV9Dl3qtZRip6S9+f9EWTNP3Tlq9qMkwFeKnznprXyhAGmF8SA02AR
 pCZquxzdT0oRbhpchMpth04iZOeDU72yzgBIZKFQSZdBpWKm5CvP28AjHlZKgM6ncpTw
 auQlrAfLyvrDohjM1Hfd+GgV00/qDbgLwZO3a/b46ysoS3SfGBSoAeqPjRDs+Oz9rwth
 FdMw==
X-Forwarded-Encrypted: i=1;
 AJvYcCW0NGUGW6jUWc28azWOGT92JTS4zCy9luzgKvUnbFTZv0t7WnkDTL4T8qBCkLk8XNAjepf1jTYdyrzCWXXVmbUfxpYdxnh8owHMInGxJOfNgA==
X-Gm-Message-State: AOJu0YwzrFiwHG0zJhflVPxufUINmVv77uzzIPCiQxjQ/Dgu3DI0ce7y
 ljml6qg4X9lP+BE6Ezh2g/1csQ4QX2QRR5Yv98cF67lr3e4T+tGyte/empV1Du4=
X-Google-Smtp-Source: AGHT+IF7QDTquWD+I+K+G6iw+g4y541SJ1nIcz4EIs4ACVb80u6p6Zv/G7HRDxnFSFtqQ8VONOtvKQ==
X-Received: by 2002:a17:906:ca17:b0:a46:cef3:4aba with SMTP id
 jt23-20020a170906ca1700b00a46cef34abamr125127ejb.75.1710749455840; 
 Mon, 18 Mar 2024 01:10:55 -0700 (PDT)
Received: from localhost ([102.222.70.76]) by smtp.gmail.com with ESMTPSA id
 dv22-20020a170906b81600b00a4658d3e405sm4531600ejb.196.2024.03.18.01.10.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Mar 2024 01:10:55 -0700 (PDT)
Date: Mon, 18 Mar 2024 11:10:51 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Jiri Pirko <jiri@resnulli.us>
Message-ID: <a315177e-a9b1-4110-a176-8a909335c56f@moroto.mountain>
References: <77145930-e3df-4e77-a22d-04851cf3a426@moroto.mountain>
 <Zff0IO6nqpMiGXl5@nanopsycho>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Zff0IO6nqpMiGXl5@nanopsycho>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1710749456; x=1711354256; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=E4DNi1tThxPrAjwj3MNLTkspc0oafwDCMGAENKTid3c=;
 b=TCn1MniOH8OUXePlXnJ85vAuIBcbzJyAm9BFWXhbcJJL+JZIkdAW9cgwKtRRpq6prL
 i3F0krlya0obtc5EgVVWdYuNbklKUMeiFod1NTnEQNau4u5BwDZrs4HfD4OkNFvsl5Ls
 5dC4nzNWkkLMJKotuGY8DuUsozawlAedZ6B2toY0Tcfdmo4SqMAgPL21n/uS6Pi6Ot53
 8hkCslYnpFPtzCVWtkwfjW+EK7bK97x+ppgUJXoFU8VAWCNB6dhTh+NKaCgsDy0VYAv6
 F7PkuoXzmxygdlIH6B0ExCZH9HSI0gpgjoW1+YLjB7U2ah/wBFu0iBZ7qBPU6rlAHSl/
 FkKg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linaro.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=linaro.org header.i=@linaro.org header.a=rsa-sha256
 header.s=google header.b=TCn1MniO
Subject: Re: [Intel-wired-lan] [PATCH net] ice: Fix freeing uninitialized
 pointers
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
Cc: Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Mar 18, 2024 at 08:58:24AM +0100, Jiri Pirko wrote:
> Sat, Mar 16, 2024 at 10:44:40AM CET, dan.carpenter@linaro.org wrote:
> >Automatically cleaned up pointers need to be initialized before exiting
> >their scope.  In this case, they need to be initialized to NULL before
> >any return statement.
> >
> >Fixes: 90f821d72e11 ("ice: avoid unnecessary devm_ usage")
> >Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>
> >---
> > drivers/net/ethernet/intel/ice/ice_common.c  | 4 ++--
> > drivers/net/ethernet/intel/ice/ice_ethtool.c | 2 +-
> > 2 files changed, 3 insertions(+), 3 deletions(-)
> >
> >diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
> >index 4d8111aeb0ff..4b27d2bc2912 100644
> >--- a/drivers/net/ethernet/intel/ice/ice_common.c
> >+++ b/drivers/net/ethernet/intel/ice/ice_common.c
> >@@ -1002,8 +1002,8 @@ static void ice_get_itr_intrl_gran(struct ice_hw *hw)
> >  */
> > int ice_init_hw(struct ice_hw *hw)
> > {
> >-	struct ice_aqc_get_phy_caps_data *pcaps __free(kfree);
> >-	void *mac_buf __free(kfree);
> >+	struct ice_aqc_get_phy_caps_data *pcaps __free(kfree) = NULL;
> >+	void *mac_buf __free(kfree) = NULL;
> > 	u16 mac_buf_len;
> > 	int status;
> > 
> 
> How about similar issues in:
> ice_set_fc()
> ice_cfg_phy_fec()
> ?

Yeah.  Sorry, I'll resend.  Smatch didn't warn about those bugs because
the sanity checks are the begining of the functions:

	if (!pi || !aq_failures)
		return -EINVAL;

are never true...  It's the first time I've run into this as an issue.

regards,
dan carpenter

