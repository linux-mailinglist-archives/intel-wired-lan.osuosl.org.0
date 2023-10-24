Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B5657D4BA8
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Oct 2023 11:13:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9E2FB8475F;
	Tue, 24 Oct 2023 09:13:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9E2FB8475F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698138780;
	bh=rDHJpuidYUAi8cpyFdJ/12spqvGqLFuR6k6OoYoDT+M=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=WsVsBCyT8s49DW4keavTwGR+YOCu44/+9hLXgen/FoBMMP8Zruea1kuQfUfsTdxWT
	 d69ekb44pkNp5TGUI80HDncYHOFVHvj4ifdp+609IpwBrTH0mhY5I4aid49NH6WCzC
	 LhsTn57GzcaVoTBDoxPmYuJeF3nwotG+sP1Od5zHZEiTddr1Zu8C34QJCAbFwd4zMo
	 yos6kQKkAHLOwAIraOJk9q44c02VcmYMCGS0hDo9nbohHzquXzoNscxAWPL3zCPQdy
	 JUF3uABfFcAyL9gsPm2lklx5T+5PjFsF4fS/L4Bl0QSTvIJ3PGTRcnCVv8oEysmbhs
	 Kyd1k2ho+tHYQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Adah0urCNxy9; Tue, 24 Oct 2023 09:12:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 80A8F84755;
	Tue, 24 Oct 2023 09:12:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 80A8F84755
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D08F91BF3C4
 for <intel-wired-lan@osuosl.org>; Tue, 24 Oct 2023 09:12:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A6E0984755
 for <intel-wired-lan@osuosl.org>; Tue, 24 Oct 2023 09:12:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A6E0984755
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eLJrqO23CXwG for <intel-wired-lan@osuosl.org>;
 Tue, 24 Oct 2023 09:12:52 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0D734813AE
 for <intel-wired-lan@osuosl.org>; Tue, 24 Oct 2023 09:12:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0D734813AE
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="385912232"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; d="scan'208";a="385912232"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 02:12:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="931979182"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; d="scan'208";a="931979182"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Oct 2023 02:12:50 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 24 Oct 2023 02:12:50 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 24 Oct 2023 02:12:50 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 24 Oct 2023 02:12:50 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 24 Oct 2023 02:12:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=f/boeG4KpoaQGYMOi4NsIoCTYXtP7M/+mWt98mgX9QMUKGJsSStNQhs2F6dwHMGqVwtQUIrf+NkaBanHtmMPx+CJf1XC5/0Rr0ZRBav49oxJtg/KFR9HjgrDsVl5PztPY90KS9+PLYgcmiIehEia5DGdIJCRpXtzqlRmwhRPvyHm391k/d6iOOhlPnH3e/PZ/R3tm3WxxAMLI9VwOfAqq+LcswjSggYwXaRMULnt5zxV2ZdPmL/+BE7XCzGBcItjMCbVWWx55rHDH5Z+No+5T1nhd8PZ0csR8kbF/kQ3Bv1n/2yq9pxUe+WAmgT2e2w6LEAiv7HI6LWZFV2zQUwkwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NzkPXmQJIIQf/MNahIKMAqE9OcstKITDYa9n3FRFGHQ=;
 b=b1fZdLSXmkVrCt7Iv6xmMZx3Ts34elXRFMcvgJX5nqh7HDrOFgw/v5eGu1p3z25xtj9377kYRhSsphGj/Zs2gkmZqBWuRqX3BWGdTd6N8ECKYsmbFZb9NePz8ekmybNMo+WLWu3k/941qp46eAzyWtnuo+j4wK2OOOLgR/yXVKxhO+HCKi/37bozvc5a+FpFDTrMvVPPF4m9LtPILR3g5unFsbWU+sRGlyNMojGKtVNLHMRmQePDfmsDGpCU+nIfErCUSQs2Zfl9or6Wl0EpuQpWlmLk5g/6sRqBcUF4fQBfKKpMmGfIvpjzmfsgr3sPgrffK5aXScvbJhfznn2LNA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3521.namprd11.prod.outlook.com (2603:10b6:208:7b::32)
 by SJ0PR11MB4910.namprd11.prod.outlook.com (2603:10b6:a03:2d7::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.33; Tue, 24 Oct
 2023 09:12:48 +0000
Received: from BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::20a0:97f2:c358:6621]) by BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::20a0:97f2:c358:6621%6]) with mapi id 15.20.6907.030; Tue, 24 Oct 2023
 09:12:47 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, "intel-wired-lan@osuosl.org"
 <intel-wired-lan@osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next 4/4] iavf: delete the iavf
 client interface
Thread-Index: AQHaAFDUSmxGam3gS02pBSfItGEScLBOQyIAgApwqRA=
Date: Tue, 24 Oct 2023 09:12:47 +0000
Message-ID: <BL0PR11MB3521AD1529EA2E80D64DAB598FDFA@BL0PR11MB3521.namprd11.prod.outlook.com>
References: <20231016164849.45691-1-mschmidt@redhat.com>
 <20231016164849.45691-5-mschmidt@redhat.com>
 <709736fb-a2a5-4d8b-a1a4-52418a172fb8@intel.com>
In-Reply-To: <709736fb-a2a5-4d8b-a1a4-52418a172fb8@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3521:EE_|SJ0PR11MB4910:EE_
x-ms-office365-filtering-correlation-id: b7d771b5-b5d1-4e38-de21-08dbd471641d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: fUiYiGxEG/NTJDVfSJekKeYdrxA1SecuQpL+lZmfrBpbq7PSmHmhmK5z6ROR8Ms3YsTbIv9hPcnlIT6SaA62E1ASSWEiLLy+YLivrB3KeF9P9RHEkSiKab+L5e8oWcuNKjOSfJnvv4u6TDCRPY8Qd67TJHcykT6rWccvHGopMWa8IqSClztHyszAGja2Vo9jAWNEr6qkndQvg9kkCBEp+lLjhsntEZD2KFBk/yatXnSwqWKRqmErrUV0yn60wxTQ+bq3AvsAq1/KkUL1muUWjuFhOTIl2W27xdaYtogAd02IhkhJGjC+ZXKmlKKRmeWfS3etvRJyMRKhDTFwWontHmoseBI06hAjyPr7Y7bGdX55N+s7+Gy80JkerN0BBN8/ZA2sE/nC8VBRweCmr7gKffn0z33BKZxOHaPvSqeGBNAYX1HjRQTFNa0s66oH9xausY9PDPSf3X+7Nfoh/itDKwpiwsm4q+GKaXe3LCcrdnayepwGtpbqqU6PU/ay95MCAoUJPQ42X1gpUSLngdlFXKQSb2SK9MEk3cOIbexhzL8Fa70n70jLWe2ZmW9z3OUgVzq1rHH11fo5P85ujyGgDRY+MU1xNrsr81iACel+fMA=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3521.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(366004)(39860400002)(346002)(396003)(376002)(230922051799003)(186009)(451199024)(64100799003)(1800799009)(71200400001)(83380400001)(26005)(82960400001)(6506007)(7696005)(9686003)(53546011)(38100700002)(122000001)(33656002)(86362001)(2906002)(64756008)(966005)(52536014)(478600001)(8676002)(8936002)(41300700001)(66446008)(110136005)(66556008)(66476007)(316002)(66946007)(5660300002)(76116006)(38070700009)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?WybkZ6kp7CbOabQquJoHJsHx1fcOK0gjAKmNPLnf+om8QsIE5iK/EVuHOOtJ?=
 =?us-ascii?Q?T673Imi7gkegs6FKZVvQhTHcftgJ+m/yzAoc//KZ89ckk6DJsUq2LmP1Tz8L?=
 =?us-ascii?Q?0Y9LrOpGGXlO7EOelQlyhMo6oAUTIZOsHyGwrZFdC+2ufwJiywgryTYmq7tZ?=
 =?us-ascii?Q?SW0BMRFpeqELWIiQEoCqIjB6qtovASOSpG2+gF/JkW2oF058V4pICiZSVSIF?=
 =?us-ascii?Q?NPAkOEcTIoD3hg+mz0mLF7dNrkBi0VhDzz5+YJoW77HsVCy5y+8AgjN2T+2J?=
 =?us-ascii?Q?0OKagpcXXmg7bR7sI6U5/qdjez08Jc5sYvN82yfgh9cCnyczmee1X4pdrzZt?=
 =?us-ascii?Q?/U/jv8CcFJxL8xFrhR1iW9w1p8LU7XGMwUEp8sjADtP6KS46XxK1XYF2ORDe?=
 =?us-ascii?Q?r0ZhesSM3hGd1OBAU8dZZ420FXH+X1qu9EiAhQvZ2C72OJGJEJ39pplg0rKC?=
 =?us-ascii?Q?2SidCJyHkdLNKWmLwhPSBFoWtlsxoQz/BmlzZhhcPrh7eL1EqnjJLG4bU+UP?=
 =?us-ascii?Q?dupK6Gg+th6Ir4BBxW9pOian6PCrkqiHfB2NhRbmRiXQ8iNbMuJAuC4Ovr3o?=
 =?us-ascii?Q?x4QoqYozuMiuc1+BIA0OlUhvtenbbOe2rOokq09om3iSYeiM1556G/knyCdJ?=
 =?us-ascii?Q?4f3WoeQmUD9s3WuP82FeGI9XSY4VzpuzcGTGwJUQqggXIwgFxcGqZDAfCKyi?=
 =?us-ascii?Q?yDC9Ayb1pV72/HT61y6ha4W1vXWNtp88ekINMyJgsw8u6p2WlDf8OJon3RUg?=
 =?us-ascii?Q?YV/U5/m8GiAFotBjlAfBYvvp4NsEfEu0RqE44EGSMmO4J0b+yDpD9pWIrJDz?=
 =?us-ascii?Q?RH8SdDok4Np2gIk2z26Yu4Ew3HWbBsjywWm8OcmPZ8jNdPscwOKBC7CDXoJB?=
 =?us-ascii?Q?ku467/TLVvB9AEo2wVEGChUz0M1CNP8jgP4H+DBBid2DwbjGOGI5mDl1pkLH?=
 =?us-ascii?Q?StrNQNYIvd+t+cGjdcbY0XdH/nPnzpSdqWMxFKPiX1OjWMK15+aRTNV2YL9r?=
 =?us-ascii?Q?GSX971RYcIA4pwEYvIX9q6cjLaxJgHYAr0uM68Kx6CjFP84zXEs9PzQ59gp9?=
 =?us-ascii?Q?j87QFU0YdmKc7QnbQyFlf1WOrDxfVBmp+qgG9LseNBbma5DNb9aRCfgeoDN1?=
 =?us-ascii?Q?pv1vy1Qwr3vInUk4w05kZK0AFu4auRpBllU4/mxbn/p7Y9jHY1nsJJt1m2Zp?=
 =?us-ascii?Q?CXjX/kmR9CGCtyC/0fd3o+Qf3Mg4y/lpSHUr65xPAATNnaGMzfo1iYMeDrJQ?=
 =?us-ascii?Q?FYEHtf4H8J+3T/tbSie4Dl+2ZgUqtW9tIb15Pd2lo1SiLS8BV6i4dwnaAodM?=
 =?us-ascii?Q?yh7RiyUqO0S21ZKb0WOneLQgQnYvbNsJEZo0Wla0PpeWCeSwg7+9IpX3yWHe?=
 =?us-ascii?Q?qSIO1zOGOQexketJ9pulRFGVpwifMhSs2apGpSJs7a19IFw8cDgZAyeKYN/r?=
 =?us-ascii?Q?Dw1PnMysXNTpqLEk/PU8WIKirQugUo6DJUbEREJv+qJGystdhmXoRpsS7J+Z?=
 =?us-ascii?Q?N7FrkngLFyaGsv/hG0GUXN5Gn3eMGby/z8nIBCOp7k3WeAJPdx6i6ZS5GK6H?=
 =?us-ascii?Q?ux3YkXyRXjNlIWrvNLZCrXxdM/VzPz4fbI1oIpj5iMK7pF7qhPKJ8DyxskRf?=
 =?us-ascii?Q?Ew=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3521.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b7d771b5-b5d1-4e38-de21-08dbd471641d
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Oct 2023 09:12:47.8591 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oMaqZ+NFW0hvuh71Muf3/ILsTdUFOlAbiRoskqiW7SLxsznWfMALP/APy4wjPH0x681n3dkN2P1i/m9Fd+EquYT9aZdVMcpyuuZWUziblig=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4910
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698138772; x=1729674772;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=NzkPXmQJIIQf/MNahIKMAqE9OcstKITDYa9n3FRFGHQ=;
 b=QylpEWOcL/bS1/f/37fPh1d5HqyprQLTsuU1+uWAYB8jADEb48UKI1+2
 +pQHvE6aZVlYT+kcOJcNpay2H2hTV9l1H2glM8V0w1L5RIJARIU2wZqGy
 +RXHGf88OioL65XUNwgVOIZLmq3yi+F5zaY3RGV4otRcXmO8X8skLSNNl
 miHnVaZ7fvFP0SLWJjOzuDUN4YcHnkEFZUX9NNKUxhlVXkWaN6FlpFNXG
 I8+ZkIZld/fjtClBi+I3kP85EZEiWBkkrUkucm3JLgvu2rHVktVMMQtlg
 1K/zmjCyEziM11jtf75toiay0lxvKOIYC4qZOnVxCUkgQijzbinQqHxNp
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=QylpEWOc
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 4/4] iavf: delete the iavf
 client interface
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
> Jacob Keller
> Sent: Tuesday, October 17, 2023 7:47 PM
> To: intel-wired-lan@osuosl.org
> Subject: Re: [Intel-wired-lan] [PATCH iwl-next 4/4] iavf: delete the iavf client
> interface
> 
> 
> 
> On 10/16/2023 9:48 AM, Michal Schmidt wrote:
> > The iavf client interface was added in 2017 by commit ed0e894de7c1
> > ("i40evf: add client interface"), but there have never been any
> > in-tree callers.
> >
> > It's not useful for future development either. The Intel out-of-tree
> > iavf and irdma drivers instead use an auxiliary bus, which is a better
> > solution.
> >
> > Remove the iavf client interface code. Also gone are the client_task
> > work and the client_lock mutex.
> >
> > Signed-off-by: Michal Schmidt <mschmidt@redhat.com>
> > ---
> 
> Yea this interface is not supported by any current out-of-tree driver I could
> find either. From what I can tell the last version of out-of-tree iAVF which
> shipped this interface was 2021, iavf 4.2.1, which appears to have released in
> 2021.
> 
> I was unable to determine when the last time any software which used this
> interface was supported... It appears to have never been used in-tree at all.
> 
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
