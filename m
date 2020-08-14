Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 975F32442E3
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Aug 2020 03:59:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8AA13888C5;
	Fri, 14 Aug 2020 01:59:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id a-cOTspPQre2; Fri, 14 Aug 2020 01:59:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B38F588804;
	Fri, 14 Aug 2020 01:59:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E2C5E1BF23C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Aug 2020 01:59:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C6B6D2047E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Aug 2020 01:59:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mJGgMBNHLcL2 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Aug 2020 01:59:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by silver.osuosl.org (Postfix) with ESMTPS id D78E72044E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Aug 2020 01:59:25 +0000 (UTC)
IronPort-SDR: 0+hkFjvRw6/QmAUsDZOnROrGfTyD6emvkfNhx7ANEANhF+7zQ69sGXGdNzE76vn7/PfoJxzNUc
 BQC8sTyUX1HQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9712"; a="142191037"
X-IronPort-AV: E=Sophos;i="5.76,310,1592895600"; d="scan'208";a="142191037"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2020 18:59:24 -0700
IronPort-SDR: PN1Lk4pY7PkJ2gMGlXH9uPfrtPaEjidNYiqwhobRhtmcCUNrvAguAnh2xLtpkoGzSCoL/7eBr/
 Buzh6ZH8V9Tg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,310,1592895600"; d="scan'208";a="369777531"
Received: from unknown (HELO fmsmsx605.amr.corp.intel.com) ([10.18.84.215])
 by orsmga001.jf.intel.com with ESMTP; 13 Aug 2020 18:59:24 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 13 Aug 2020 18:59:24 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 13 Aug 2020 18:59:24 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.45) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Thu, 13 Aug 2020 18:59:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NGOzCWTuI2zFczk08OwXpDSS4Dykcg3mKJLh9bXnsDh1xpLT7/cDOyqTEHQPDlFBv8jExupWlmv+iAC4NDK2MwuX9QwbfjEcJOD//I9b6JTlQbwDPIFoZgo8PlLTf0Pam366WRrEpAAlmEECV7GK79iKcIece4eqISosrnipJsSLpx245JqVVs8gdnbvJaCdBzcKVH07jU1LtjzVY8qHTxXqhJJIUh+ADJwJbRCpka/5etpQEQyOfEc+BJ1Knp4U7FhiIntOiGWDdttCmmFuJI2m62RsMp1FJZo26ziMkqYlIUGqC6D7dwGcEA79+Io/PYXlTVpEPtNdgpxJFjLoiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TMu5bdQ0jh9UqVoanefu0MB7NtEdp2VXXhGso0VS/Rg=;
 b=Tpj9g/nuYNB6PNwait0CwpeeQgut/Tk8y8MGuqWiulj9mn9/dhHEdaIMWJBAuDJiEeblh3gWpWr8JSOrFaHQWvMo8+UxegUOl6U7Qdwf7QCbglXnmKcU9uQkjx4YgqKOLznTYXRg4currAk9p8xqdPhgE7izrQd+s7XbRVqJbeTonY3blIBwtJGlp+2oeHKzZXcrlkDARYMkc3PibhO8Dv7D3eA5wQ1KYiQMQbRaTOgpUkabDCX2+DEUwZwA1vk9vkVzrhxjUc6KIYKc3FBUCe5SGqekAJC3vlCnl5GTZk8aJHiwkz4F15FgWUsGVVYBswzr/pP1sKD5zcoyHVUxFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TMu5bdQ0jh9UqVoanefu0MB7NtEdp2VXXhGso0VS/Rg=;
 b=HGwgsFdL2G0ekamN/IAUpZCAteP9hzMG0kHrunQrKQDmmuJqkLfySHZb77Cz5HGh6O/e74Wr5FNehjM0XSNj1BZd4XSemvag6k0YD8pQ3gxL4PU/wiFhpAuUeCV6EMIRbHLTjBO8BJdsLDy03qXyHjcJMJNwXpDLk7bScbbYf/s=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM5PR11MB1913.namprd11.prod.outlook.com (2603:10b6:3:10b::20) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3283.20; Fri, 14 Aug 2020 01:59:20 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::65c2:9ac9:2c52:82bd]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::65c2:9ac9:2c52:82bd%6]) with mapi id 15.20.3261.026; Fri, 14 Aug 2020
 01:59:20 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Gomes, Vinicius" <vinicius.gomes@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net-queue PATCH v1] igc: Fix PTP
 initialization
Thread-Index: AQHWacR43VYs6cuBXUi5kOwAuBQIuqk26Uzg
Date: Fri, 14 Aug 2020 01:59:20 +0000
Message-ID: <DM6PR11MB28907E7E74CDEF5288AC8344BC400@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200803183207.817588-1-vinicius.gomes@intel.com>
In-Reply-To: <20200803183207.817588-1-vinicius.gomes@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [97.120.171.58]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 74946a7d-9ac8-4c9f-b62e-08d83ff5a8ca
x-ms-traffictypediagnostic: DM5PR11MB1913:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB191333C326107AD9CD9B6752BC400@DM5PR11MB1913.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: zFkQkmboua3OKZV7a0udJmqy/iJAwda7bll4euyoojWUXn7FE0HT0TFdvctgmwT5Yrx7KhsrBPygjEjyuBUCs4CrcpOe6GdloU+kScbPawIEHqIVRFUGDt2eQvFZnkqgGxXbxkLqo0JrEhC7xNbYQa3EpBm5QRKmig0q74Zd/7JvDFsnQTL+CwMBizAPAFDXVV8bHz9UaaRqHlBU7a68ZcpJeOAEnYERBFMX7HdGL3B9KJS7Rj2cjDm2eHySmLKDJmtoB7tU9cOK0j/cZmi6bvFkoi8DUp/ucQ0iOO9/r0xyZ+6ELSywhZ+cqzzzsGnH7mAMC+TqDd7BwU49kAo87g==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39860400002)(376002)(346002)(136003)(366004)(396003)(66446008)(76116006)(66556008)(5660300002)(66946007)(64756008)(66476007)(55016002)(83380400001)(52536014)(33656002)(9686003)(478600001)(71200400001)(26005)(186003)(2906002)(6506007)(7696005)(110136005)(316002)(53546011)(86362001)(8936002)(8676002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: 8+qQ8OPRTxFba7Zl0K5OtQNRCQinBX79oNpyMsmHyikTJaYggxI7mUF/GeI5Q8ycz4bTc9ZgUjaiY0vSE8KLYGobozcsRb8d1p3K269tubebVgCFz/eLGUPvtXG+4AdZEaxUkgLM8o2hgrHNFhT3cYMdCgT2otHuWaK8yq3yIqeS80jpi/KbxJtap5go8VTENMuAlsY0A6zyJlwrbqKQ6gkztbjVcUq+V9s7QcDxJrh9gRTeaVeAZwLQ+MsVVgA3yMtpEtOuLZ3t549v6fe7J2Xr7vZ4i+Wab+Bi2AqANfaGLYj6I/EFUglntNjKmkUAtBP9cwjGsCeI3KO8LK9cvbvD+a3QLpX3LTwMvuIziI6m+h4ZJ34p6LyhaFyBmW67uuxJhSFmQtSrqZVOmvrc0UX4PYt0zeeCiOBGcEqn17eV1I4Teq6DCwiBnuNz/hhalI/3dpup8P2uEieWU9ysmJxR5jCSyrPTbjESps5fNB6eNp7i4DAgHwGaMhuSnpGRU4nAqkfbdRdCEP7O9e/q2EgHVTvK7IHS8uv9fLmw8mYQGtwh/zFNdy7RPSWq5qnSyFwm2iq4o+h7mBYp9Sq9waqMIuOgaMVyIUcnueQ8tkqD2WGQEx4qfk/jjere8hvDZMenToJljDFlnktJnKqXew==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2890.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 74946a7d-9ac8-4c9f-b62e-08d83ff5a8ca
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Aug 2020 01:59:20.3400 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AilOXKEg54LEdu6ogJiPKA0sfHxykh+SeOr/ZIfo1ffIrWASzK/dtydd6EA1Ui1Nc76PifgDwnZBifUJBM/tAg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1913
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [net-queue PATCH v1] igc: Fix PTP
 initialization
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Vinicius Costa Gomes
> Sent: Monday, August 3, 2020 11:32 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [net-queue PATCH v1] igc: Fix PTP initialization
> 
> Right now, igc_ptp_reset() is called from igc_reset(), which is called
> from igc_probe() before igc_ptp_init() has a chance to run. It is
> detected as an attempt to use an spinlook without registering its key
> first. See log below.
> 
> To avoid this problem, simplify the initialization: igc_ptp_init() is
> only called from igc_probe(), and igc_ptp_reset() is only called from
> igc_reset().
> 
> [    2.736332] INFO: trying to register non-static key.
> [    2.736902] input: HDA Intel PCH Front Headphone as
> /devices/pci0000:00/0000:00:1f.3/sound/card0/input10
> [    2.737513] the code is fine but needs lockdep annotation.
> [    2.737513] turning off the locking correctness validator.
> [    2.737515] CPU: 8 PID: 239 Comm: systemd-udevd Tainted: G            E
> 5.8.0-rc7+ #13
> [    2.737515] Hardware name: Gigabyte Technology Co., Ltd. Z390 AORUS
> ULTRA/Z390 AORUS ULTRA-CF, BIOS F7 03/14/2019
> [    2.737516] Call Trace:
> [    2.737521]  dump_stack+0x78/0xa0
> [    2.737524]  register_lock_class+0x6b1/0x6f0
> [    2.737526]  ? lockdep_hardirqs_on_prepare+0xca/0x160
> [    2.739177]  ? _raw_spin_unlock_irq+0x24/0x50
> [    2.739179]  ? trace_hardirqs_on+0x1c/0xf0
> [    2.740820]  __lock_acquire+0x56/0x1ff0
> [    2.740823]  ? __schedule+0x30c/0x970
> [    2.740825]  lock_acquire+0x97/0x3e0
> [    2.740830]  ? igc_ptp_reset+0x35/0xf0 [igc]
> [    2.740833]  ? schedule_hrtimeout_range_clock+0xb7/0x120
> [    2.742507]  _raw_spin_lock_irqsave+0x3a/0x50
> [    2.742512]  ? igc_ptp_reset+0x35/0xf0 [igc]
> [    2.742515]  igc_ptp_reset+0x35/0xf0 [igc]
> [    2.742519]  igc_reset+0x96/0xd0 [igc]
> [    2.744148]  igc_probe+0x68f/0x7d0 [igc]
> [    2.745796]  local_pci_probe+0x3d/0x70
> [    2.745799]  pci_device_probe+0xd1/0x190
> [    2.745802]  really_probe+0x15a/0x3f0
> [    2.759936]  driver_probe_device+0xe1/0x150
> [    2.759937]  device_driver_attach+0xa8/0xb0
> [    2.761786]  __driver_attach+0x89/0x150
> [    2.761786]  ? device_driver_attach+0xb0/0xb0
> [    2.761787]  ? device_driver_attach+0xb0/0xb0
> [    2.761788]  bus_for_each_dev+0x66/0x90
> [    2.765012]  bus_add_driver+0x12e/0x1f0
> [    2.765716]  driver_register+0x8b/0xe0
> [    2.766418]  ? 0xffffffffc0230000
> [    2.767119]  do_one_initcall+0x5a/0x310
> [    2.767826]  ? kmem_cache_alloc_trace+0xe9/0x200
> [    2.768528]  do_init_module+0x5c/0x260
> [    2.769206]  __do_sys_finit_module+0x93/0xe0
> [    2.770048]  do_syscall_64+0x46/0xa0
> [    2.770716]  entry_SYSCALL_64_after_hwframe+0x44/0xa9
> [    2.771396] RIP: 0033:0x7f83534589e0
> [    2.772073] Code: 2e 0f 1f 84 00 00 00 00 00 90 f3 0f 1e fa 2e 2e 2e 48 89 f8 48
> 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff
> 73 01 c3 48 8b 0d 80 24 0d 00 f7 d8 64 89 01 48
> [    2.772074] RSP: 002b:00007ffd31d0ed18 EFLAGS: 00000246 ORIG_RAX:
> 0000000000000139
> [    2.774854] RAX: ffffffffffffffda RBX: 000055d52816aba0 RCX:
> 00007f83534589e0
> [    2.774855] RDX: 0000000000000000 RSI: 00007f83535b982f RDI:
> 0000000000000006
> [    2.774855] RBP: 00007ffd31d0ed60 R08: 0000000000000000 R09:
> 00007ffd31d0ed30
> [    2.774856] R10: 0000000000000006 R11: 0000000000000246 R12:
> 0000000000000000
> [    2.774856] R13: 0000000000020000 R14: 00007f83535b982f R15:
> 000055d527f5e120
> 
> Fixes: 5f2958052c58 ("igc: Add basic skeleton for PTP")
> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_main.c | 5 ++---
>  drivers/net/ethernet/intel/igc/igc_ptp.c  | 2 --
>  2 files changed, 2 insertions(+), 5 deletions(-)
> 
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
