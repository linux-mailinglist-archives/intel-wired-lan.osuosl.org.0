Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 71FE63F62A0
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Aug 2021 18:23:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DCBC3407B1;
	Tue, 24 Aug 2021 16:23:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Lx8rlmVcujUY; Tue, 24 Aug 2021 16:23:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8CBB2407DC;
	Tue, 24 Aug 2021 16:23:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 301B61BF2F6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Aug 2021 16:23:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 28F0D605F9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Aug 2021 16:23:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wThVuqurkbXY for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Aug 2021 16:23:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7AACF600CD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Aug 2021 16:23:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10086"; a="281063716"
X-IronPort-AV: E=Sophos;i="5.84,347,1620716400"; d="scan'208";a="281063716"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2021 09:23:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,347,1620716400"; d="scan'208";a="507692856"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga001.jf.intel.com with ESMTP; 24 Aug 2021 09:23:28 -0700
Received: from orsmsx606.amr.corp.intel.com (10.22.229.19) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Tue, 24 Aug 2021 09:23:28 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Tue, 24 Aug 2021 09:23:28 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.174)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Tue, 24 Aug 2021 09:23:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=imKkDQ+87u/gZfnLbcaKATx7GoYi/9tepKc+RrU1+ojP8hrkh7hbkyFV6H54RRbX4B16NxA/Xh3frXilUJQbZQ5POmAAIy1OP1MZvwTeYN7S54/PqNRs7ns6eahp+QWm6DM0SWmWMufQGMQiOt3N23M4O+kO0x4tjLnU4B0W23SyIi49wtdLOOxcJuAgdNSfDR+TPxxvI8Kfosf/yODW8n0HRJkGY+WkDJXENGhIaSZWizLvULFOE6tGHvSa7kQ95QIKMnGoDO0w8i2GrFYwZ7fuKIqUWtdPal4hwGqAwkmjrTNIF0+kqd9mRYXi59uMI1RmJOqK3U1KB/Jx4oyPeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=y8XxXD8UBYLniaZ4TcTdFPnSnm+5RtsinmDnmUnZ2Qk=;
 b=DCdMpIVQ7qaE97QbRmWIX7y7jbc9I66svnlUc40OXRLoXbluwDh+QEVqvI6gfA8+S8pAAQW3guqB0Vmt8fMvfiV0arU5oPsh8dN1wSzfjUtcdk9MmP5XS0ZhnFV8Oezi4byhVByv2fQvF5eJuaAee+kkzUyxfuwLrS4tlfWWdl/+XbIqnk9noSC7XHHXI5R+y0yGX186XjNBBsF0w3WAOYq8d2tLm1WGdcI325sWtkUslDy2qbl31z6Vae75hRh2iTjVMrr/+rOZDMh6yIHlapAcbfe7ixt0zwhJ5FgjJ089oE0WBhSIz61CW609goOvAzpiDR96xvG9oPzA9IshZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=y8XxXD8UBYLniaZ4TcTdFPnSnm+5RtsinmDnmUnZ2Qk=;
 b=CmHo/Up+8q9kHCkuZ8uLYh8el+j9Q6Mgs6Cjcu5EQK44aBOQaV8Z+RqHYnXk6iaRA4JkMKSttkmhO1xOTGeAv5rcGBM/N+BYpXVrHkTlbPQ4eeK7WQ3TA2YJ9OVFwNNexhygaHPsFk9l8m6ejxThR2OeG/f/9/TTRWUYS2MSEm8=
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by BY5PR11MB4021.namprd11.prod.outlook.com (2603:10b6:a03:191::28)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4436.22; Tue, 24 Aug
 2021 16:23:26 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::472:1876:61ac:f739]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::472:1876:61ac:f739%7]) with mapi id 15.20.4436.024; Tue, 24 Aug 2021
 16:23:26 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [next-queue v4 03/13] ice: add lock around Tx
 timestamp tracker flush
Thread-Index: AQHXmHrjRRWpl2skIU+oW229cAPNaKuC13LA
Date: Tue, 24 Aug 2021 16:23:26 +0000
Message-ID: <BYAPR11MB3367898F2E14AA8AF53E7CA1FCC59@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20210824000158.1928482-1-anthony.l.nguyen@intel.com>
 <20210824000158.1928482-4-anthony.l.nguyen@intel.com>
In-Reply-To: <20210824000158.1928482-4-anthony.l.nguyen@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f45b9720-348e-4e58-2548-08d9671b8089
x-ms-traffictypediagnostic: BY5PR11MB4021:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR11MB4021A5112431010E8B804C98FCC59@BY5PR11MB4021.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3383;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: fwnnlUQR1plp/IkJOh7gT+/wrtOdZME9+RVLiZ+DQUjvO1mqfP7sgeKVBXzo04kONhcv2jv6ZEkRljENBH9fGf1II1an0IDhpICwl8w0VCdoKizBhq1wmrr4mKATOgYOf7y/5lPjQ3gMcCMAFwxhRgjU1Faj/m2rS+XKorL5vnmg/UQ/tFofFExOUSTuxKNP6HPp9BWR7hEWme0SVzY8eZ5BhA4liaz+XE7paAf2wwRp5j6AjPrKeAQbAeoiBqrrFz58JiX0n38WJWfLH2vDDnvEQ7T8u+vDgz8xHhvO9DfDnaZ9p4pOCOT4uv/go4941QbV9mcukkbtl9BdB4Mfq9Wa2zjlERwiXqZAgV9BUbacxsmrGuoZDFmvIotCr8sftRnvJ0sdMfCQs27dWJjzDWI9WtWWuP6Z3uAg2b+gM9KfkRSLeQiMeBfkI9st2tiy3xbivlfuYeyzWvNZaFDt/AONMSuxxZUinGpk2y35FODVy3DBZ/ivcSTPiOTG+L8Pe+rsymfb2c9Dcw7bQH73kGzZdLY9dMq/KACCP02sWPShI2OlV2KNAxGrOdWj4OqoqsLD3osJBQPJeubS51T2m4ZbXQWk5NaNLbviSQlBPQXb9AjI3pFhDAo0KqgO537uC9azUm9tDMNpzAg14O3wI2KSgMq6clXhgBFH/Hf7Ckb1xiLfYSM3NyNJyopgU4Rz1RTrpZHq8GoT3Low25jL+g==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(39860400002)(346002)(136003)(396003)(376002)(38070700005)(38100700002)(66946007)(122000001)(66446008)(5660300002)(76116006)(83380400001)(66556008)(110136005)(66476007)(64756008)(55016002)(316002)(86362001)(2906002)(53546011)(6506007)(71200400001)(52536014)(186003)(33656002)(8676002)(4744005)(9686003)(26005)(478600001)(7696005)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?dE8z9i7SvtyUwQAjgACNodQ4LhaKQ/KBU+gR/XRAwPkGMYHj6d6Hj4JD0Li6?=
 =?us-ascii?Q?4yP6ePzs/7IIafgobupZ0YvIopjyIwop8V8OzC6ENfQd7WFVf69TyGQezcPR?=
 =?us-ascii?Q?J4myYe1c+3muZ8kl88/815z0zsX86JmnHXXtHQsb9z5lScnLsIHBVlh5xdXA?=
 =?us-ascii?Q?eHNLKHs6Ol8ZFyjm6ymfBgOKi5ZD02o/KG1v29N8Y3LmgjheRYdH8JzABZas?=
 =?us-ascii?Q?enqKwKaiS8fSnhzMR8Pym1p5HOgKjrqGoqIZijAlxPPkrYSa/sAI5RVMlBPx?=
 =?us-ascii?Q?ev15tgHZUpw96tNW86l4FzyydfLGp6yzwkqHpX/RdFWztpsOQTIy2rmatCYA?=
 =?us-ascii?Q?OsZHp2AMziNZW55jk/+B6rySF3zIwvIbmVImMsbv5mqxaOzjNC0NIAHbbpMP?=
 =?us-ascii?Q?OrlcMDRjYpcemmBAvlN44zjmVjksmSL4ktpzK9Prute47AT5HwSfk9KVY8AF?=
 =?us-ascii?Q?cnEXkzhC6l23x99ATHdOMtUeKRnJNxoCfZ6/569DnMl6LtLV2GF7IAL3VzS8?=
 =?us-ascii?Q?pRLiCZo0tRpS2L2fwYHDHl0xEaRjAxIfuclT8lO4wnvNnUYgIur2b0ZXnVcu?=
 =?us-ascii?Q?6PLk4wNsZvKSVHhr6EwQiMeK3fRQqiM2VlS40FI5wLS607/ZEDuUlIkT7q/S?=
 =?us-ascii?Q?He3wmqNKTHp7dR1CY/pX5JpLsgX9Q3TifHBglNd40ytu0N0w5EcxN63Uoc71?=
 =?us-ascii?Q?7z0FuhxqEZN9/xK5OedwCfYpaC1wNHAqgeihAPBciGvdRgNiNGQQuTe03ehI?=
 =?us-ascii?Q?tK5LIPhK0GMXHfhFo4B8kZGpL1eMpg1wd/S7e7/FSevMRCwxZToMQQlnKeB5?=
 =?us-ascii?Q?04qHr2S8Z4JgHsSQ7GDu7KcYrk6x8UE/XNa+MD8z32hKKT6pfFGzlaLlR7k1?=
 =?us-ascii?Q?yp/gy/8ExDLyRtgxOI+/IVnRykWaN/BU8gQPdnPGaPId9HdL9uTByc0O/AHN?=
 =?us-ascii?Q?4KzmL8ZDMqUyx7XvJbU8qHjlVZJBOtIyJBmakK6ke70sZ4mIOcnYTr/N7i/j?=
 =?us-ascii?Q?uU0f0We7IqRzGiGcibRK/Hl37+IAuUwIgvQ/XCMEOhgjk+/jbQcK6jJ8B5Sq?=
 =?us-ascii?Q?elTXdcXGZxR9rGAtx16ZKGvOG5FUbW9Ze5Fx6tjx3/rvqThhIGPevlZQdvdj?=
 =?us-ascii?Q?JM2sH8VFcy03PNsMlHG/IRRMuM+Mfk7VKTBjSeFWpeHlHt27dBD63yTaR5WQ?=
 =?us-ascii?Q?lFZid5zmkzpKU3KdyFI6yK7rDRXYKaKos37tjQtSY1tbMjFKSRgQ6HfppakJ?=
 =?us-ascii?Q?v1AlxLXjl6a1VP0GwuDb8FXYmMoGekHAAHcK5K01CfMWBL92ecC0zWWw/ryH?=
 =?us-ascii?Q?TNUx2Sf0JjIW6qZeGg9j7Mm0?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f45b9720-348e-4e58-2548-08d9671b8089
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Aug 2021 16:23:26.6935 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NSquaijFyH8Wxxf3VgijlqlNQVOuTpx33tehdd1u13BB6G2T8m/CDKI5//um25/nQGxBhy6iCpPJrfQ0D8/EcA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4021
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [next-queue v4 03/13] ice: add lock around Tx
 timestamp tracker flush
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



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Tony Nguyen
> Sent: Tuesday, August 24, 2021 5:32 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [next-queue v4 03/13] ice: add lock around Tx
> timestamp tracker flush
> 
> From: Jacob Keller <jacob.e.keller@intel.com>
> 
> The driver didn't take the lock while flushing the Tx tracker, which could
> cause a race where one thread is trying to read timestamps out while
> another thread is trying to read the tracker to check the timestamps.
> 
> Avoid this by ensuring that flushing is locked against read accesses.
> 
> Fixes: ea9b847cda64 ("ice: enable transmit timestamps for E810 devices")
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ptp.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
