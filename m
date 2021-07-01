Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D56B3B9583
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Jul 2021 19:28:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 55C97405E8;
	Thu,  1 Jul 2021 17:28:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id voXbqY9OtT4B; Thu,  1 Jul 2021 17:28:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1B845404FC;
	Thu,  1 Jul 2021 17:28:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E7FB11BF83C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Jul 2021 17:25:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D247C83CD3
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Jul 2021 17:25:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id is0wP5NkcQ4i for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Jul 2021 17:25:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 43FE483CD2
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Jul 2021 17:25:09 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10032"; a="230235403"
X-IronPort-AV: E=Sophos;i="5.83,315,1616482800"; d="scan'208";a="230235403"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2021 10:25:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,315,1616482800"; d="scan'208";a="457749302"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga008.fm.intel.com with ESMTP; 01 Jul 2021 10:25:05 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Thu, 1 Jul 2021 10:25:05 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Thu, 1 Jul 2021 10:25:04 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Thu, 1 Jul 2021 10:25:04 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.42) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Thu, 1 Jul 2021 10:25:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=arvKyvejv/C9sLyprPEieMPrhRuO5TEebavCp13zy/6XrikRiEIedSjCW7CuiHnn7c53QMUqB40Xqg7E2NssrQ0R59jKVyCSRdylNbcFQaUYJThgui7DNWdFdnP5HqIlzS7xJ/0Opqmo0kMXZGGLt5ftUI3xLqoCAqDXnbRiGWdK7x4yN78/k++RcjZn13M1XgzPCChKICanuewMQQOwpYFafOYwzklhSCTinTQLqI8kxj2AJpe46IAUZEY9Ovm+VfsKt8nNu8hNgbzdHDW3opeoeVWhOqbRQPej/fmbSsfonJB3zZ7nJaESmZPLLjxAmN+hIChb+HR2klPyZtMT+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=U6clX2SdjoO7qmZpH8dXnlfQd6mawamWopEx4Qo063E=;
 b=bwVBDHYfnjZbK0hWF37M5PcWz89MyN3U6gtED/+viGO7hbb6pm6INVHI7sxghy/SOG1i3w2d+kUUFR0ACSbR9HdFA09YRQC1G/xu/qOOHpJmKmH/eZTwh7Ty1cofPVFVcO4o/m2RfP4hJR4Q5RDoNb9uI6xFF0Gde1Unj72XHuneMTZSvTleY6c+sZodz1BvmKh/xKrNn1OtWlvdx41xUMuL/fxQBl9FQxDvMD8CB/Tt7XFpOJdfDa5X4HaLHthYJ283rSrv3GaWZxLaN40OKMufRqWDvQeTJBY+0Gpn9iYVct72M75HXqI8takLYIMpWUuKze2FIQgwDY4hVTVdAg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=U6clX2SdjoO7qmZpH8dXnlfQd6mawamWopEx4Qo063E=;
 b=DH0oQz2GH6SSqpz34RI6BaswLx0G6rpkLQ2pUMzSME/d4+2bigbEx1/uV5ej+4ZcZr7iD3IPNI9emKFYpp8HIzJ+S4L/anVlaN5TEGd9t88VSwQqMcuM3osA9Q8tJ+XFV/DhJ7qRbjF4Yd8AqTK29CQdIUlSnT6eUl9Jrf08C1M=
Received: from PH0PR11MB4951.namprd11.prod.outlook.com (2603:10b6:510:43::5)
 by PH0PR11MB5141.namprd11.prod.outlook.com (2603:10b6:510:3c::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4287.23; Thu, 1 Jul
 2021 17:25:01 +0000
Received: from PH0PR11MB4951.namprd11.prod.outlook.com
 ([fe80::3037:7b6a:c881:c590]) by PH0PR11MB4951.namprd11.prod.outlook.com
 ([fe80::3037:7b6a:c881:c590%2]) with mapi id 15.20.4287.022; Thu, 1 Jul 2021
 17:25:01 +0000
From: "Machnikowski, Maciej" <maciej.machnikowski@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Machnikowski, Maciej" <maciej.machnikowski@intel.com>
Thread-Topic: [PATCH] ice: Fix perout start time rounding
Thread-Index: AddunQMzLoUmHHk7T12UsqsYRkW8Bg==
Date: Thu, 1 Jul 2021 17:25:01 +0000
Message-ID: <PH0PR11MB495113B3795624D79EF8F1A1EA009@PH0PR11MB4951.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [83.8.190.227]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d24a50cd-3a66-4145-4dad-08d93cb52898
x-ms-traffictypediagnostic: PH0PR11MB5141:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <PH0PR11MB5141CD1B42BD423F23F94FD8EA009@PH0PR11MB5141.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: acMSd4VuQ0Rc6Z6ACXOIDpPe8K4YxVulBTmdjPuRiIsk7SF34Xi9WymLD7Mo0wHAeMvEVX6JrvqM1B70ZiR/psg6i1rMCIKsx1vaLdgQhRK85QOV6W1wDCB7OMszyHAg8xnwQRsmcK4612sZkIhO6wxuLilJ16WL7v6lhRUyOqZ9XVdNBp26AQVoM5OFjmsPSPyoziXWku8LsH1pUPn7TqTnPP/xtg0DRAMbxkYKMp84yPyNdF2be+i+8FIiX6yjKfE6IG6fIzaIZyn6tUg3e2OyCgxkQpR5WTmOpOKxW1S9sK6Pk+RANX9mvZtmNxm1DtFITl9KHNltjN79p/cy4a/eMqm9eYOApurLrbZEtyMxa51c1j839nNvd8pWY4sDzsSCVtbRy5RkYjnL9clkIbxzf8wiNPkBTvON17OESEeVOUNAsoy3V++w0zJGqEl9Zi4/T4Sy49S+hfoIo6DhP+ba+oSoYfnuYE4Jk3DbYzEEJMMQs0czfIdcSGxjthdL1h1y2yl2W2C5UHcGs28dVYzk7nOFUo3RqjDey29VQASHnV/yM28KpoSvdVehN9K9HzGhn0aCSvHjeHN2Fi9y8ElsYV+HuYEpemeuecZNBUIBVhcDOlgJ2Mo6IF/eG7+oaNPmprNfWYWjn6cewbyAHg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB4951.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(136003)(396003)(39860400002)(376002)(346002)(9686003)(186003)(55016002)(316002)(86362001)(33656002)(110136005)(122000001)(38100700002)(2906002)(71200400001)(478600001)(76116006)(7696005)(6506007)(5660300002)(66946007)(66556008)(64756008)(8936002)(66446008)(83380400001)(66476007)(8676002)(26005)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?0/C5UbDBpMQv0FHBU2/9kUOG5kKzdybbHrqx5zLBcI15jHLZvgBGqmEhKj6r?=
 =?us-ascii?Q?pGGvJjmSuTjbHgPbtljP4L4Ggx4xTIVgiInnI/sJgIuOCskHcaml53EL4Rnc?=
 =?us-ascii?Q?9hSPOKIxKv4cDsAq+HBvpUVl4sVzEmSNw8Jhp9nSEVrUeACFWuXbCyH/1k/g?=
 =?us-ascii?Q?vyyaI7VdQDltjiwSIHUO43AxxJKO7ha21ArIL+FsUjXoXKgHrqUIaFy7V5Z+?=
 =?us-ascii?Q?iECU0KMH9gk0xiRhH+xF/GcTeK9dWTWYEG19jT+gsZhuCpb588FYw/KgKa2j?=
 =?us-ascii?Q?baNAGjKS8TdgF3AlyvHwDh9QHQtUNMmzl4YQ1WCUSaZeq6PsgUoqBaQ2dud0?=
 =?us-ascii?Q?ucIuIWCsjN/7eW4DLdSsiuQQ06tq/i2Dp4uimuoncFfRQ2AZRGvmQlzuBq2G?=
 =?us-ascii?Q?BNgSSpRTPOf+It3xyOrqnXp1lllo5JtpfV5n2BVPkLW172DX3pNknnu1WCU2?=
 =?us-ascii?Q?lVQ2ILgHsjTeurX8k/fYSGOgBvVwjAzlSXw2fvUrIZ8mHffXxV1fwDoYOs1Y?=
 =?us-ascii?Q?JuZlT36F6kINc++FfiTLd7hdtBCwiajY+a4+DmBBXIapvXIjYnkbchgOrK1c?=
 =?us-ascii?Q?XmhcW9Z1BoFVAMKB1TnBXwINqKadPhIb/kafGsfXaH2lO06Rn1iN9EBR+sBg?=
 =?us-ascii?Q?uBu7U/Sa4kxUvOMCYY3r6Zxr7wr+K5hNrFAIwt5WYpkkxLJYRSu5fmOK7s2m?=
 =?us-ascii?Q?JZugJ9Nm5IBsos3Xz3XUR9VHIP/03WnYRQ5JG6+kaCCrNw+hFSJWGGn4xKZB?=
 =?us-ascii?Q?s3L2tRZy1vxH93qtCIAWpfjjC9ZSNB9NpKgR3z9c9i/4McvD/lqbNcM+64Ue?=
 =?us-ascii?Q?k60HmXYug2UNjVKGyIqAemWn+zNSzjEfgzP1j7+H5SRGfzUtsQtYCmD5X0kc?=
 =?us-ascii?Q?tjRWf9a3yG/Csmb4Hh2CMRpPJJTaYIzv/ZWq2IOU5t8TwHzyr6orG4cHNCNU?=
 =?us-ascii?Q?JhkngcktOwESoUQ6mVmXPzbkYGXam3FhyNN1du3GA12q+okZWTOUSrxmHFYS?=
 =?us-ascii?Q?Oh/aVhONG13+OB+J/7GvtJcoWMksjDqjn901kv1xk1smY30PTd2YHUmmiRYG?=
 =?us-ascii?Q?Tigvxw00hVdKf++Ju1ta83QEX3Xnp5p6TTfGZBYofJ96IM97M2WqxLkzfoA9?=
 =?us-ascii?Q?UFt891U1GHl+46lxzX8ZsJz2LIynSVCzpvO/8sonQlO29LFXuabIcYkabEd4?=
 =?us-ascii?Q?zjgqknMVJI06CVg8y67JsTtozT6A1OQf7LCnpLCAaWBuMzVtClSqzxf29skR?=
 =?us-ascii?Q?mShkA3SYEk03hG6hHsVL7WM1PmR52Jb3oBkqslOI7qAl7iUTix4d2gPP/oT0?=
 =?us-ascii?Q?BUg=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB4951.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d24a50cd-3a66-4145-4dad-08d93cb52898
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jul 2021 17:25:01.6775 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ES8DzJ8l22Fw5M3CTwTRwkKhGY7gkPecB/mExofH4zmeCj7+Yv3IpYdYHnCmPMMr2Rio9DfR5c1qEt0dP+RYkF8jSpQrjPiUFeG46qLc8r8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5141
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Thu, 01 Jul 2021 17:28:48 +0000
Subject: [Intel-wired-lan] [PATCH] ice: Fix perout start time rounding
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

Internal tests found out that the latest code doesn't bring up 1PPS out
as expected. As a result of incorrect define used to round the time up
the time was round down to the past second boundary.

Fix define used for rounding to properly round up to the next Top of
second in ice_ptp_cfg_clkout to fix it.

Fixes: 172db5f91d5f ("ice: add support for auxiliary input/output pins")
Signed-off-by: Maciej Machnikowski <maciej.machnikowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 5d5207b56ca9..9e3ddb9b8b51 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -656,7 +656,7 @@ static int ice_ptp_cfg_clkout(struct ice_pf *pf, unsigned int chan,
 	 * maintaining phase
 	 */
 	if (start_time < current_time)
-		start_time = div64_u64(current_time + NSEC_PER_MSEC - 1,
+		start_time = div64_u64(current_time + NSEC_PER_SEC - 1,
 				       NSEC_PER_SEC) * NSEC_PER_SEC + phase;
 
 	start_time -= E810_OUT_PROP_DELAY_NS;
-- 
2.31.1
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
