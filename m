Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CEA0274F9A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Sep 2020 05:38:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D500620341;
	Wed, 23 Sep 2020 03:38:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JAGz6wu4xHaX; Wed, 23 Sep 2020 03:38:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D4B68229D4;
	Wed, 23 Sep 2020 03:38:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 83C481BF94D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Sep 2020 03:38:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7F205842F6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Sep 2020 03:38:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aqOY2nEgl9d6 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Sep 2020 03:38:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by whitealder.osuosl.org (Postfix) with ESMTPS id DAF9884189
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Sep 2020 03:38:29 +0000 (UTC)
IronPort-SDR: nAM5lOQ9qII6NcOWpT1sme2NOG4Kg97WZ43Lg28LjNU+c6ISYG4rfYbemKZ1gwJQg762hIOPMN
 pLw2G7cUk2mg==
X-IronPort-AV: E=McAfee;i="6000,8403,9752"; a="140783604"
X-IronPort-AV: E=Sophos;i="5.77,293,1596524400"; d="scan'208";a="140783604"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2020 20:38:29 -0700
IronPort-SDR: iFQx8PYZqTVvAK4wBSKcLe0Rk8Io0VBw2/fD5OR7IGuP2MhELLaqnbs1V8w86Hx3upCKSQSd0N
 jB8ZBi2CP92g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,293,1596524400"; d="scan'208";a="412864742"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga001.fm.intel.com with ESMTP; 22 Sep 2020 20:38:29 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 22 Sep 2020 20:38:29 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 22 Sep 2020 20:38:29 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.103)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Tue, 22 Sep 2020 20:38:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PUrEcnYrJadS5MGowi+G/pJ1gpCRWPliyuO1zjn0u4JZPz6e8a2IK5zML+RLnvCvQZJuslW1xG/gW93xMlI1g/VYkRDPd4XEmljvwK+B5fuMwTst4hkDIsVOVc4doIKH40hu9wqPRmqmjdYRJ+2iSKi5h97NHkx5Td7fjXilJOPbJS2oNxZ3Sq36J7qKLQy8maWVNWPxnwz5wj2zvRHN24zhwqy/GB3xJafKdYjaOmQbkZfEr66L9emooJYLDWYum3mncRMDk1e/yfJ2OkuCHO2RZSPFO632bmJFv0ow2fjZIUKVT5Oae+iDRM/9c+FSUrE0gYxlLj274Xb6G1LLUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bIWR4lIvQNvG5IrgVDOAg67LzcBbfWEoxFOZu2EWVZ0=;
 b=k6L46XnpspBb2xqeERmMpU0WtJcwZcsAhEyZDjcJajxZEorqcz9JORdmOKThHwI9stxvXN3Jvwr2KRXlQ8oMNtH0FbOPQy5Pub1DvKu1VtnfT1Mmh8Xy3qVTEAbAisiwQRbBbWRepqLpRnEPLxIIZkSE/br7zYe/xESuUPHLxLmqRCys9m/FX1vpvpnl7dm5HQhml9n/l/j0qwCOhR1OdKRRZEFK5wwsXFYu+Re4RO6s1X5/D7ScUACnTYD+51dgmQcMIP5JbN12F5JQDJAvCaWDogJbwq5VL7njFuapQ/LhoywbFD8miOBOKr5H5TUqycxEzOEGe+YFnOeNtVwpBg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bIWR4lIvQNvG5IrgVDOAg67LzcBbfWEoxFOZu2EWVZ0=;
 b=fd7t2SROCYOTYk+MTWk5hZrT2Ipf15C4zubRGiRrrTF+K1zV9tjwG+TROThTXYECSR/VUYIEr4OEr7F2B0Y144r2MknFGLkXUbztnWCyA+YFDCGPK+o+0APVhz+ETbG4uwmgyu6DLQVaftPftQE9J2lb3AcCYbjVGilkrySb7io=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB3084.namprd11.prod.outlook.com (2603:10b6:5:6c::21) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3391.11; Wed, 23 Sep 2020 03:38:23 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::8c79:e56f:7f8b:ebe4]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::8c79:e56f:7f8b:ebe4%7]) with mapi id 15.20.3391.019; Wed, 23 Sep 2020
 03:38:23 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Neftin, Sasha" <sasha.neftin@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v1 1/1] igc: Remove reset disable flag
Thread-Index: AQHWf41jHMYm4pumXEO/NmBeGiem46l1trvw
Date: Wed, 23 Sep 2020 03:38:23 +0000
Message-ID: <DM6PR11MB289071595B99DB6B45695A3EBC380@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200831115329.1238812-1-sasha.neftin@intel.com>
In-Reply-To: <20200831115329.1238812-1-sasha.neftin@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [97.120.208.31]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 99e979f0-712b-42f7-6f58-08d85f721fa0
x-ms-traffictypediagnostic: DM6PR11MB3084:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB3084D74C2890F3B8A7041031BC380@DM6PR11MB3084.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1360;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: P5YQD+1xzKPefjnXgCii4SETpnfrqjsK9CUmqK0adzLsYciMEkZi47TMUOA4mz19DOuMp/DJlSXJKSI5ARsSBnTupUIf7peWxj/KjwvJOwCg/7Fh3OXfhWye9CFyXq3QFGSKRwvMl3se7Yh59edtAp4TuBc4JL+2bbTP5pc0E8cJyTtVXXuT5nlWCwEMJoHLdgBoT5x85SfIuHExR6uT6/Z7CDeAlRVpxkJWEPbxAmtbWoEQJepxT7qFWrp5Kf4bwXsFVFCK+LUKEapnyjMye37+L2HtP1N5VocvL0tkvOnwQKJZ5Zlu/rU5vBG5IfBF2/WYMP67T00Y5f6PANeTlh135cqdOTPMDBzGCNEPLxchReahZgkLhSVDnSBrLhI5
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39860400002)(376002)(346002)(396003)(136003)(366004)(186003)(53546011)(71200400001)(8936002)(6506007)(33656002)(110136005)(2906002)(26005)(86362001)(4744005)(316002)(83380400001)(66476007)(52536014)(7696005)(66556008)(66946007)(66446008)(8676002)(64756008)(5660300002)(55016002)(9686003)(478600001)(76116006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: z0/XEbe6MMi8XQ/VK/fUT5Sd7iRM9da+s85tv2SE1yfIEJl6U+eKM6ieQuYYp2xMPQAQuM6Ry1k88sC0rjKXBi4QLeaaHEdPRTYxP9aGZHcUV5kJasxa5Q+V1gb/wLVDVcAEmOAvASTmt4u9C2B6EJbqDlo1W5077+CWFKdWDQeLg9NdoidfbmuPjhavzJ5ERcKXctZB0mhHKF+Pewj3WufYL34ETx1LHnxqx2j6DK6DKnByCULxphxAqrxiR82tyx0eYiK1oYxlIA9gEvNDpzbtJ2FMXCQL89ZonHEL1BUPJSPdAmf+eFkCZs1KXFeaNPuLzq833X2mvdQcr8IeXeEHF1xOgZvcxEKzjbcDkYZ65Qy9rB/B+sDq80sdFMG1alphQM3pL/6eNa22WqfqxwYjHRtj2QHHJburKlC3df5zbb19ChxHJG8vVj4kNHpEG90h/K9ty2u1AlNcpTrmaKLB0uSLrMx/YscBKeq7SjY5NOpTTU+9P1ILyEjOoUruKXkgqL2Qc7ewLLj6Hh+QGB2IWyS2F7lAmw92NEB9sFubYntbK9OpERomPUOu2FBEDvoujUj9+VaV6nEZ4KHBt1jTGwzO7Y/zMDiyFDlKne1vYV4k5mROlQHC6/6vxEX8KewB8SM2cR7zidX+imXrbg==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2890.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 99e979f0-712b-42f7-6f58-08d85f721fa0
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Sep 2020 03:38:23.3504 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: g7qXH2lOedvh4yVs9gdLQO60Tmfg/tzjkFFosncV/YxHoo6Vjxq3qgOFNlVMO50n3oQn7NMshZMwqw8Xg+YB8A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3084
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v1 1/1] igc: Remove reset disable flag
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
> Sasha Neftin
> Sent: Monday, August 31, 2020 4:53 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH v1 1/1] igc: Remove reset disable flag
> 
> Boolean reset disable flag not applicable for i225 device and
> could be removed.
> 
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_hw.h | 1 -
>  1 file changed, 1 deletion(-)
> 
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
