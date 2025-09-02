Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B67CB4085A
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Sep 2025 17:02:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A190560E17;
	Tue,  2 Sep 2025 15:02:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BqCyHcP5ssli; Tue,  2 Sep 2025 15:02:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2750260E05
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756825375;
	bh=lV+l/abgmHpQqmeGSBvsTCuokZnuY1jXVG9xt6N9/rg=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=zqU3yaWOAa3Lhpc7es5BykymY3quki+bz2zGfRbcY9F3J7NIJaHThs3jiGejw78PK
	 u2YwDj9bT+NSKZwqCgxlofrWkyoBokipF9nQxOq7l8dnuO6HpHEM8RbQiTgZEk+YXu
	 ZVMqrWEZLXjjtLtKqBw2kPkEVPgm1b+zfIGbTnKMuyTSADTD5URp3LD7OxenGi19gy
	 po6N3jUMahCzipSjUHaqoYrYl6hN7FDKl6aebO5CHc5w/CculyUW19ZgvmGaXAEH7M
	 ASymIEfmhBrA335PJNUOVZBAAc/vWIGeH1eV7uQua3Gnua4wNuvJyd9bmpOqmGNwI7
	 ZiK/DlOEjvHeg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2750260E05;
	Tue,  2 Sep 2025 15:02:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 4FA2D439
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Sep 2025 10:47:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2B93F60AEE
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Sep 2025 10:47:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9AGuoC-bqyaF for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Sep 2025 10:47:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=80.241.56.151;
 helo=mout-p-101.mailbox.org; envelope-from=listout@listout.xyz;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 0A13560A61
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0A13560A61
Received: from mout-p-101.mailbox.org (mout-p-101.mailbox.org [80.241.56.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0A13560A61
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Sep 2025 10:47:24 +0000 (UTC)
Received: from smtp2.mailbox.org (smtp2.mailbox.org [10.196.197.2])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by mout-p-101.mailbox.org (Postfix) with ESMTPS id 4cGMrQ21snz9tQ2;
 Tue,  2 Sep 2025 12:47:18 +0200 (CEST)
Date: Tue, 2 Sep 2025 16:17:11 +0530
From: Brahmajit Das <listout@listout.xyz>
To: Vadim Fedorenko <vadim.fedorenko@linux.dev>
Cc: andrew+netdev@lunn.ch, anthony.l.nguyen@intel.com, davem@davemloft.net, 
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, netdev@vger.kernel.org, 
 przemyslaw.kitszel@intel.com
Message-ID: <crnofgnchveaeduom44nzbq26m2zudy4wut3pl7xgf3fwar46n@tzvxk3nwlgmq>
References: <e13abc99-fb35-4bc4-b110-9ddfa8cdb442@linux.dev>
 <20250902072422.603237-1-listout@listout.xyz>
 <c7005c02-63dc-4316-905c-e02283e398c5@linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <c7005c02-63dc-4316-905c-e02283e398c5@linux.dev>
X-Mailman-Approved-At: Tue, 02 Sep 2025 15:02:51 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=listout.xyz; s=MBO0001; t=1756810038;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=lV+l/abgmHpQqmeGSBvsTCuokZnuY1jXVG9xt6N9/rg=;
 b=wXfarb3+X1eSJg3DUEtiHXAviwGIcCABPRUQHzI9dmwGqo2CStl1aGBJSPFrvUw89ARXUI
 g/DGvr34anPxAZjGqw62gT/SgdMqSWzJ0sIQq7meyJp36iaS7ReKAjgh90Vq7+sGJcBhs6
 l4tvIHSCZshf+uCKe6IJAzPyqtGu3wcabMlsAhKum4I+Q/2lBPKBGxNxlQhkC9QgKOk5Yy
 OBJwXFXFsALybvALsPT1CDtM1Hz/1kM/NVje1g0iM972GY9Rcq1d0VCJB45ZXc9DEc4iHv
 6+w7g/PvgWmuKoV8tmw57nuoD5NF8w98LptEb6oAVk2xdvLpLSMH2O60MzFHpw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=listout.xyz
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=listout.xyz header.i=@listout.xyz header.a=rsa-sha256
 header.s=MBO0001 header.b=wXfarb3+
Subject: Re: [Intel-wired-lan] [PATCH v2] net: intel: fm10k: Fix parameter
 idx set but not used
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

On 02.09.2025 11:34, Vadim Fedorenko wrote:
> On 02/09/2025 08:24, Brahmajit Das wrote:
> > Variable idx is set in the loop, but is never used resulting in dead
> > code. Building with GCC 16, which enables
> > -Werror=unused-but-set-parameter= by default results in build error.
> > This patch removes the idx parameter, since all the callers of the
> > fm10k_unbind_hw_stats_q as 0 as idx anyways.
> > 
> > Suggested-by: Vadim Fedorenko <vadim.fedorenko@linux.dev>
> > Signed-off-by: Brahmajit Das <listout@listout.xyz>
> > ---
> > changes in v2:
> > 	- Removed the idx parameter, since all callers of
> > 	fm10k_unbind_hw_stats_q passes idx as 0 anyways.
> Just a reminder that you shouldn't send another version of the patch
> as a reply to the previous version. And you have to wait for at least
> 24h before sending next version to let other reviewers look at the code.
> Current submission looks OK in patchwork, so no action is needed from
> you right now.
> 
> Thanks,
> Vadim

Noted, thank you.
-- 
Regards,
listout
