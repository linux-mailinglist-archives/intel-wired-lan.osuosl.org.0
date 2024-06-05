Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4764E8FD990
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Jun 2024 00:03:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CF8D841675;
	Wed,  5 Jun 2024 22:03:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dmmcCUP3uaov; Wed,  5 Jun 2024 22:03:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A295E41671
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717625033;
	bh=vXVTJl+1mt0p0C7KaOtF/dBnnpCDVme0dzPTFHZo2AY=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1Ka4J6QEoFUmM/k1jWftgJgJ6y93NrzNRyfP6QLM4ZBWe55E2S+K1/2bs3DtHytQW
	 Yw4W2c09iGoLt/yh4uHglrgW19XoxqZNgnHpIHBFvI10ZAgtWARrvzniDZxBkUSKhI
	 fJHkD4t5m6scmd4w/l9roFbWSFjqO4RWMPrN0JSTtDLRiHy8rggo7Uc/ULAXCYgiGu
	 vritswJaXhzdy1ZIzhYCeUlrclW2ZLtGHj/0sHTdGCggWHqePcswIWeyvDqL/x/0xg
	 42vZbfb2j45IGsHLfWBIjOlIThrE9HbQh7N6wD0IsxgZ8Cc4zFq9Tz0Zlv/cLeBVyX
	 ADxrpX51V6+NQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A295E41671;
	Wed,  5 Jun 2024 22:03:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7E7051BF5A8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Jun 2024 22:03:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 76616408C0
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Jun 2024 22:03:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nJWe2p5CwNKW for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Jun 2024 22:03:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=vinicius.gomes@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 330354042C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 330354042C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 330354042C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Jun 2024 22:03:49 +0000 (UTC)
X-CSE-ConnectionGUID: hpQJSWLuRGeau2VDyKppWA==
X-CSE-MsgGUID: +CeVWRs+SFekJGdTEl58sA==
X-IronPort-AV: E=McAfee;i="6600,9927,11094"; a="24918450"
X-IronPort-AV: E=Sophos;i="6.08,217,1712646000"; d="scan'208";a="24918450"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2024 15:03:49 -0700
X-CSE-ConnectionGUID: +Dih5inJQR21GUZkoKeF3w==
X-CSE-MsgGUID: xnCGZDhpRoavJ0PbnJwegQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,217,1712646000"; d="scan'208";a="75210673"
Received: from spandruv-mobl4.amr.corp.intel.com (HELO vcostago-mobl3)
 ([10.124.221.122])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2024 15:03:49 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Mikhail Gavrilov <mikhail.v.gavrilov@gmail.com>, Sasha Neftin
 <sasha.neftin@intel.com>
In-Reply-To: <CABXGCsPAdzVnSpT65NkMTi=jS1c0-bz=2XjnZWUkOxhrnkpgEQ@mail.gmail.com>
References: <CABXGCsOkiGxAfA9tPKjYX7wqjBZQxqK2PzTcW-RgLfgo8G74EQ@mail.gmail.com>
 <87zfso6tfk.fsf@intel.com>
 <8fb634f8-7330-4cf4-a8ce-485af9c0a61a@intel.com>
 <CABXGCsPAdzVnSpT65NkMTi=jS1c0-bz=2XjnZWUkOxhrnkpgEQ@mail.gmail.com>
Date: Wed, 05 Jun 2024 15:03:47 -0700
Message-ID: <87le3jujwc.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717625030; x=1749161030;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=vXVTJl+1mt0p0C7KaOtF/dBnnpCDVme0dzPTFHZo2AY=;
 b=QR+g3/nbeGYCV6R8rLQL4nVNIT5R8pG5A2RGy5BycOLPEbgtoMxBeYG5
 roJZYzmMzhOekKU67+t6pk48Qo6mJ2p2uAjMkrPLDmG2urRZNVCRDMpTj
 od66D9jK0tI7+qatI2ku1AiUcwMVTIJFA1K5BHEGTfV0IHd5DMi15cCbx
 lNS4JKEYbrvWJGCxtWzvaErXhACAooqswThqHwkuC/N197+FvC8/bX6D5
 C2VYgdMb5u6KPrRriFG70jXVeKfwTnSdvurex+Wc+V3cIEJxR5kD5yjVd
 Gm+Tmqh61DMzs/u6qUASVwSxMVJq3JyL3Jj27rEjLQMC0jlf5vdnk4hFN
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=QR+g3/nb
Subject: Re: [Intel-wired-lan] 6.10; regression;
 bisected - commit 86167183a17e cause info msg "trying to register
 non-static key"
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
Cc: vinschen@redhat.com, naamax.meir@linux.intel.com,
 intel-wired-lan@lists.osuosl.org,
 Linux List Kernel Mailing <linux-kernel@vger.kernel.org>, hkelam@marvell.com,
 anthony.l.nguyen@intel.com, "Lifshits, Vitaly" <vitaly.lifshits@intel.com>,
 "Ruinskiy, Dima" <dima.ruinskiy@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


Mikhail Gavrilov <mikhail.v.gavrilov@gmail.com> writes:

> On Tue, May 21, 2024 at 10:34=E2=80=AFAM Sasha Neftin <sasha.neftin@intel=
.com> wrote:
>>
>> Any thought? Revert?
>>
>
> Sorry for the noise. Is there any solution?

Sasha has provided the revert[1], so it's on its way to be fixed.

[1] https://lore.kernel.org/intel-wired-lan/20240529051307.3094901-1-sasha.=
neftin@intel.com/

>
> --=20
> Best Regards,
> Mike Gavrilov.

Cheers,
--=20
Vinicius
