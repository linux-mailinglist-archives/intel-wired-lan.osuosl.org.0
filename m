Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8167D8C8E6D
	for <lists+intel-wired-lan@lfdr.de>; Sat, 18 May 2024 01:14:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 221CD4156F;
	Fri, 17 May 2024 23:14:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id p0rvlBiRTsFv; Fri, 17 May 2024 23:14:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 683D641452
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715987673;
	bh=r6E6bcuwh58uSy+ZKgcCZUW+Is/CdxBIlTsB4jQwdaU=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=hZTiZuPJQ9IakKUH5BdGPfu2ocQHeuT1FjyQcFsxcqMsEENzmuwg/C0ExfcsIZs/7
	 UbDgP1gFbOYvwAtvhPyai+u35cyPfowM4aNdUs8F047L3zMXmkz4SMhZvnEOHEb5Dr
	 Ayqq0vKGbqfGOHe3A9keUo4EDrsJoqRSNSw90GL63CyzF9ljKHJdoaA7elGl1OmtxV
	 dgV1giP/h/WqDdoQBiPJvEASNximUC/xVL7cgbOf64MT92KjxBl8fzZhhv5p2rCxGW
	 fNfFX0AB61xUMNqk2MHLy9rvW9oW8tcHdDFIMSOeCYfxqEFvyLC2jJIXAL9Kh8SMEO
	 tqk95dpBe+5TQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 683D641452;
	Fri, 17 May 2024 23:14:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 04AEF1BF841
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 May 2024 17:46:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F17DD4047B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 May 2024 17:46:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Soxl3viPo2dD for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 May 2024 17:46:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::62d; helo=mail-ej1-x62d.google.com;
 envelope-from=almasrymina@google.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org DEFD240189
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DEFD240189
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com
 [IPv6:2a00:1450:4864:20::62d])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DEFD240189
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 May 2024 17:46:06 +0000 (UTC)
Received: by mail-ej1-x62d.google.com with SMTP id
 a640c23a62f3a-a5a88339780so373872366b.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 May 2024 10:46:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1715881565; x=1716486365;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=r6E6bcuwh58uSy+ZKgcCZUW+Is/CdxBIlTsB4jQwdaU=;
 b=aHJxlSGIItAHq9Og7KxL9cPdM8zw/Ou/eqD5HaxPUDpXSplfUsgUZzTmOBPlFrBjjy
 8mNIml7HSLz7/hYZ0Fc4F8wv8PKIA78TCAkAMuqRvMnUsjdUxzswz5CDuSoOkv2JWrKC
 aRm1vox390Xs7T8pTn1bhnT27jbE8xEvoLaSPdMN0SMKQQDfID77JyR4qK6mEctmArSH
 C0XBqngU/YMb+qBVulmP+SZAC9vNZwY8RUj5v8YjDAr+jbviImzHfLKGTgZPRszKVq15
 KTL7saayJ4KkXl2PgwtbtONvDFG0YKC/2S5ATY/7pFxZB9bxqzljKGrLc/hzOJxyLS57
 3f3g==
X-Gm-Message-State: AOJu0Yz2qZiGo0Bg7/j97TP0CErdk+NvXSSr4WxcbbdERJThZo3hqSXO
 mH3skni+Y/e4DDBViTdtda+MO/14YXlul/zrnNhofBp38gziHdy5lzI2+nEwnf0Mk3JXaactqen
 51gXKWD1jUSqjVBvXVYP7IE1ghSekL0RtBlZ8
X-Google-Smtp-Source: AGHT+IFtVHnI/HeI6RHiNHcOM4sVWOXQMemsaRcFuf/AFZHYdohKi+ZquyO7RYepjpYsIMd518QWrm82tL8e3zmrYb8=
X-Received: by 2002:a17:906:7045:b0:a58:c80e:edd9 with SMTP id
 a640c23a62f3a-a5a2d68127cmr1194167166b.77.1715881564304; Thu, 16 May 2024
 10:46:04 -0700 (PDT)
MIME-Version: 1.0
References: <20240510152620.2227312-1-aleksander.lobakin@intel.com>
 <20240510152620.2227312-3-aleksander.lobakin@intel.com>
In-Reply-To: <20240510152620.2227312-3-aleksander.lobakin@intel.com>
From: Mina Almasry <almasrymina@google.com>
Date: Thu, 16 May 2024 10:45:49 -0700
Message-ID: <CAHS8izMRaw3TyURSwdoAnd67EHpgdfazm7-jOFUAWuCAOd39ng@mail.gmail.com>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Fri, 17 May 2024 23:14:31 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1715881565; x=1716486365; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=r6E6bcuwh58uSy+ZKgcCZUW+Is/CdxBIlTsB4jQwdaU=;
 b=nW8wZqb0FeqyN3yShAF0O/cV0a8FxILhU6Py6CFn0cLU0y/no4z7ru+vmBldSqDQ3Y
 7OErKkO4SqbVEjjz+iHiVdQMhaa+340e82jH7ws/xGXcpx9CW7E+fAm2hY753/83oPBJ
 L4JmcTANPml9tehxG23vn7HKCsbQh1LvDp/d913h7gmka4v5pZV8lnS2u1PmK4WsJA8I
 FPZeM7HA0YMu0ayPbdvky+JAWQ/RhvPEJ57GQJD7wD9qf8QLwJmqfcRkcjX44xdmNUMT
 1uJJR6Nzs1QRBT5fhYpRMDMvIrWvDotQROUtuQ1ZyB9kr1FTrVCMdc6OFIWqK6NQIoJU
 h+xQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=google.com header.i=@google.com header.a=rsa-sha256
 header.s=20230601 header.b=nW8wZqb0
Subject: Re: [Intel-wired-lan] [PATCH RFC iwl-next 02/12] idpf: stop using
 macros for accessing queue descriptors
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
Cc: nex.sw.ncis.osdt.itp.upstreaming@intel.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 intel-wired-lan@lists.osuosl.org, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, May 10, 2024 at 8:28=E2=80=AFAM Alexander Lobakin
<aleksander.lobakin@intel.com> wrote:
>
> In C, we have structures and unions.
> Casting `void *` via macros is not only error-prone, but also looks
> confusing and awful in general.
> In preparation for splitting the queue structs, replace it with a
> union and direct array dereferences.
>
> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>

FWIW,

Reviewed-by: Mina Almasry <almasrymina@google.com>

--=20
Thanks,
Mina
