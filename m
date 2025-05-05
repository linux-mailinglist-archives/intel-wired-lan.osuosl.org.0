Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 48D11AA9167
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 May 2025 12:53:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id ED6F760899;
	Mon,  5 May 2025 10:53:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 95HMKIY8IUvE; Mon,  5 May 2025 10:53:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 31E9B606F5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1746442415;
	bh=+XPXRW0JJznY8AssRx1Bs32TRnw7KPyyMX1UFpBPUOk=;
	h=From:To:Cc:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=JSXQtQQbTfkyAPfRcM8GzHtSlFFzPCJPd/sJwcnd3DfEKHty20hq9xyiLYYG3SGXf
	 cafgWVnPYqfJ5vbY4fIBxRG7sKBxrOWkulZf/FGL4zsSBRIz97xz09TTPN/hzZGNvx
	 rBKjPq1B40fScST+M8kRe5fZsdlyHXLToytNE6QJW7vYUbiU5ql1F4l2kEix9frFnE
	 /5Pq5cUXB1Y3bfXVBY0OwnQZ2dCPdYzK4FzsuGeQtoORzwIArkyOMdLjE7NcFY8cUK
	 zEA1giT92LwSv3w2T+2BrL2nPL/MIetM25RnrjxJvhKGRjesQGxGZLyY8/zzmRXRou
	 5vRvFOJEgVOjw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 31E9B606F5;
	Mon,  5 May 2025 10:53:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 93751EA
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 May 2025 10:53:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 74881814B8
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 May 2025 10:53:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bCf3iqKRghpG for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 May 2025 10:53:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=jani.nikula@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4523C81368
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4523C81368
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4523C81368
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 May 2025 10:53:31 +0000 (UTC)
X-CSE-ConnectionGUID: /r23Mv3iRTOheOBAHNDIDA==
X-CSE-MsgGUID: zuPAonzVQhuZJPFP9nqFmQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11423"; a="59034744"
X-IronPort-AV: E=Sophos;i="6.15,262,1739865600"; d="scan'208";a="59034744"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2025 03:53:32 -0700
X-CSE-ConnectionGUID: HXNZSRGHR5uBqroKljpNZw==
X-CSE-MsgGUID: inFkX1+LTKGZEArRIH0EwA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,262,1739865600"; d="scan'208";a="140378273"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.232])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2025 03:53:28 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>, "Hall,
 Christopher S" <christopher.s.hall@intel.com>
Cc: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Keller,  Jacob E" <jacob.e.keller@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Saarinen, Jani" <jani.saarinen@intel.com>, "Kurmi, Suresh Kumar"
 <suresh.kumar.kurmi@intel.com>, "De Marchi, Lucas"
 <lucas.demarchi@intel.com>, regressions@lists.linux.dev, "Linux regression
 tracking (Thorsten Leemhuis)" <regressions@leemhuis.info>
In-Reply-To: <SJ1PR11MB6129BBB9E38F6DB731604E94B9812@SJ1PR11MB6129.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <SJ1PR11MB6129BBB9E38F6DB731604E94B9812@SJ1PR11MB6129.namprd11.prod.outlook.com>
Date: Mon, 05 May 2025 13:53:24 +0300
Message-ID: <87cycnwcpn.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746442413; x=1777978413;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=N7mgrqYQKGzNDO35iLT+P3KVR96WDlyoRG4PtpOwF+s=;
 b=ZBxoUsg2vxbrJBQh/+7hhkDU7EmWB/Z1ftPNuF1mYXUAaGorm5hHkjmG
 HZVBsT2MZvkAweiXjjPVjG77zvZBiFBajFxtvkMjMtebBDieE98qzukir
 yuRY4EETbcFxezepNEnm0P8DGozkX54TUqjgoUDi1AgRHnuXXcPncKtmC
 ud8V/tMMxGkYhOraZ87Cpij3xLWfIs/CwNOCECEZBsY40vlc3vBFMevbb
 6pNdvCp6WxP4/dbwdx7KAyEP9nyXA7Wkv2j6hVu4v57UhwDYtDlZTKB0q
 Za7dzK+I2A0OxQRLFIAyPT4GU9NSrh+fJIqcJvYluVoEz/U8m38ftPCEe
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ZBxoUsg2
Subject: [Intel-wired-lan] [REGRESSION] v6.15-rc3: 1a931c4f5e68 ("igc: add
 lock preventing multiple simultaneous PTM transactions")
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

On Mon, 28 Apr 2025, "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.=
com> wrote:
> Hello Christopher,
>
> This mail is regarding a regression we are seeing in our CI runs[1] on dr=
m-tip[2] repository.

The regressing commit is in v6.15-rc3. Updated subject and Cc'd
regression tracking.

BR,
Jani.


>
> `````````````````````````````````````````````````````````````````````````=
````````
> <4>[    7.891028] =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> <4>[    7.891293] [ BUG: Invalid wait context ]
> <4>[    7.891526] 6.15.0-rc3-CI_DRM_16443-gdc80d6a10c1c+ #1 Tainted: G   =
     W=20=20=20=20=20=20=20=20=20=20
> <4>[    7.891792] -----------------------------
> <4>[    7.892070] (udev-worker)/286 is trying to lock:
> <4>[    7.892349] ffff88811671bcc8 (&adapter->ptm_lock){....}-{3:3}, at: =
igc_ptp_reset+0x155/0x320 [igc]
> <4>[    7.892660] other info that might help us debug this:
> <4>[    7.892943] context-{4:4}
> <4>[    7.893226] 2 locks held by (udev-worker)/286:
> <4>[    7.893515]  #0: ffff888103bd41b0 (&dev->mutex){....}-{3:3}, at: __=
driver_attach+0x104/0x220
> <4>[    7.893823]  #1: ffff88811671bb70 (&adapter->tmreg_lock){....}-{2:2=
}, at: igc_ptp_reset+0x53/0x320 [igc]
> <4>[    7.894134] stack backtrace:
> <4>[    7.894439] CPU: 2 UID: 0 PID: 286 Comm: (udev-worker) Tainted: G  =
      W           6.15.0-rc3-CI_DRM_16443-gdc80d6a10c1c+ #1 PREEMPT(volunta=
ry)=20
> <4>[    7.894442] Tainted: [W]=3DWARN
> <4>[    7.894443] Hardware name: Intel(R) Client Systems NUC11TNHi3/NUC11=
TNBi3, BIOS TNTGL357.0067.2022.0718.1742 07/18/2022
> `````````````````````````````````````````````````````````````````````````=
````````
> Detailed log can be found in [3].
>
> After bisecting the tree, the following patch [4] seems to be the first "=
bad"
> commit
>
> `````````````````````````````````````````````````````````````````````````=
````````````````````````````````
> commit 1a931c4f5e6862e61a4b130cb76b422e1415f644
> Author: Christopher S M Hall mailto:christopher.s.hall@intel.com
> Date:=C2=A0=C2=A0 Tue Apr 1 16:35:34 2025 -0700
>
> =C2=A0=C2=A0=C2=A0 igc: add lock preventing multiple simultaneous PTM tra=
nsactions
> `````````````````````````````````````````````````````````````````````````=
````````````````````````````````
>
> We also verified that if we revert the patch the issue is not seen.
>
> Could you please check why the patch causes this regression and provide a=
 fix if necessary?
>
> Thank you.
>
> Regards
>
> Chaitanya
>
> [1] https://intel-gfx-ci.01.org/tree/drm-tip/shard-tglu.html
> [2] https://cgit.freedesktop.org/drm-tip/tree/
> [3] https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16443/fi-tgl-1115g4/b=
oot0.txt
> [4] https://cgit.freedesktop.org/drm-tip/commit/?id=3D1a931c4f5e6862e61a4=
b130cb76b422e1415f644
>

--=20
Jani Nikula, Intel
