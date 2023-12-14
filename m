Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 92512813264
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Dec 2023 15:03:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1BDED408FC;
	Thu, 14 Dec 2023 14:03:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1BDED408FC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702562599;
	bh=xosQu852xc3xdnBZx15uj3aMWm9SkpKRndHf9FRDDcI=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7A633s+1OsXhnlCA7nE4a7pg/A5Uzr3mWkYVTKdWWuR7TxhUvTU3carhUxyUsgNrC
	 +JUJvmF4N2RT/pKfA0B1sJYox7tTXXciQ3zHcw6xvbRXXw2aPII/Vnixaw40CAxSLA
	 E9uoPobGxAlXeOp9dTbAvgsCcsuWWLwHSEkHoclZnTrZRu08DeD5lvYffgYFUrIAH3
	 nQoeSd/v9XUnF9SAuGxz410hDHuomZ5X/86nLugvb0Q2E5E1qqV50TS8xI9UuRUMLC
	 hT8hGZEIgH9zZUgfQJ5PBSpIyvh9sPbvgWNcaYO7pEkQMm7DvV+CM9dCE+CVkrFtZ/
	 Vm+m05VcA+8hw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MS1QCisvxJ4r; Thu, 14 Dec 2023 14:03:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 864084087C;
	Thu, 14 Dec 2023 14:03:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 864084087C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 225641BF41B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Dec 2023 14:03:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id ED3F76F4F3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Dec 2023 14:03:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ED3F76F4F3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id t2q4nRJNb0dm for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Dec 2023 14:03:10 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CEC6160B8C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Dec 2023 14:03:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CEC6160B8C
X-IronPort-AV: E=McAfee;i="6600,9927,10924"; a="2289159"
X-IronPort-AV: E=Sophos;i="6.04,275,1695711600"; 
   d="scan'208";a="2289159"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2023 06:03:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10924"; a="750537466"
X-IronPort-AV: E=Sophos;i="6.04,275,1695711600"; d="scan'208";a="750537466"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Dec 2023 06:03:09 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 14 Dec 2023 06:03:08 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 14 Dec 2023 06:03:08 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 14 Dec 2023 06:03:06 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NyeJ/lC/sgne9gvKk2s6tD2vJimEk6ZrCwzEWbW0pcy2kOfhazP0iL7UcNhPUFS2kiatg4XL9Wsvi7ZHf2AbtFgLmrATYs+CL42XYe3MOzKX0+69Ccg7H1qqHEGu2NXKz+Z+oQ/XaD30xvZ4tKF+2rp+J5gj7THlRQvCgMQYCB+TxFggPhOOZr3EO52bvTuPUa414AvZGCxf3JRpfCSjldS8lYYLqeN3uV5/syB2fmPGlugLJr2YYs5vsA3Y1q8RQ12l5KlrVllI6OrO+EYJsAbDqDdZrhZf+Lnl+XPTKuO4NAvesneZkscpcCZ62DhhhlGLUvqjQ6rAQCaUXbF00w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dEkyaO1E/0PsAztq5+x5Ucg2Jc8BjnV4nKBwP2vNfps=;
 b=VE2A8pQMec7lORIOx00p+YnAxZTB0IkqX7YAaB286i+QIrCVSAld+CLmT+QWTWvFrBXQnJNSUDO3bNSObXwZQ/dYnJpRL7cZ4xpOXFyV6acAIYyDX8kfhTY/yb4QEFPGkxUTcA1rPXXqMQOi/YWp0iJHeK8/2HoDc0HpCAe05hHUrWxMo6Dpw5OnT1XmZ5tJofcd/9E0l6row1NmofsZ71BJ49iKzyw37HPXUQBLRp4P9K2bnTTC+8iu3GkMMd6NYfZYg81K/eNF5IEwk7gAQwSOPsO2WAzYfHaZNkdpY22WbbSIIN+ZhcM+uM3Evl14td6G6dmVT9AIImR16+MzGA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by SJ0PR11MB5582.namprd11.prod.outlook.com (2603:10b6:a03:3aa::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.28; Thu, 14 Dec
 2023 14:03:01 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::954:6050:f988:740f]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::954:6050:f988:740f%4]) with mapi id 15.20.7091.028; Thu, 14 Dec 2023
 14:03:01 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Stillwell Jr, Paul M" <paul.m.stillwell.jr@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v21 2/5] ice: configure FW
 logging
Thread-Index: AQHaLYJzYY1Be5DWVkiiKAmaieimyrCoz+vw
Date: Thu, 14 Dec 2023 14:03:01 +0000
Message-ID: <BL0PR11MB31222C8FC54722EA0D36E83CBD8CA@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20231213050715.190-1-paul.m.stillwell.jr@intel.com>
 <20231213050715.190-3-paul.m.stillwell.jr@intel.com>
In-Reply-To: <20231213050715.190-3-paul.m.stillwell.jr@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|SJ0PR11MB5582:EE_
x-ms-office365-filtering-correlation-id: a972ff4e-c1b3-41f3-ba03-08dbfcad62ab
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: NbQrrP0Qj9KeNO21uFM5xTPrqmtQrMq6141uJ8AxaYy1srwaaUtCNdjUtPcmTjKY+FaQPLzVIamsE4nOIxbZT/1/+/Eq6S8eDWXp3fg2Ukyc5PAVYBGyZH3PXrBU3LeXtiXZyvMCrsDk7KYfy4h9m/tbe1K6fLvPm0SVLH4M6WwAKfiEhSCA95R++7CaV59tMyiUwn6+DQ+ajFhAas98f2KD0GS3UGMYJ4y5M1Z1HvrAflEH2r4++IpPfCKRYtSxXAiVVUt4wv0s2Xl4SH7HJ1AIM4FcusXss2oE1UkXqUH3U8S8AppnSDZmqZBhhQEdIPjywtf1nKeJwgWNVRvj6GtFwpEQ52KQqcuVYIYUCzkVlTYf6c7oVGXuimgWcz7AxZFYfI5W4/8c9YavxmCgQGdrofY3U1F4/mEj82sS/TSFqpwZ3CHNHUJxnx/u80HDVhuVyZjaQCz43HKdCsu2nxLRA/rQe8HRxfVH/53zMEzksAwj4snNairr6Ksien25fKuU9KYPy9G/iw/H5QQ/YhXm2ABx+GIRXoKI5I+pdnDpoLkdkGCO7+X/ijFfPP6sxvaOtAcO1niodi0HUJmgggbGKmf6GBAtB0uZfVf0O2k1jHy/tuT1DVAva+fWxr7jjCRKWpXklSW2w6VJPNzNsVoJD2Js8XhMbgEOsZKFGxA=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(396003)(376002)(366004)(136003)(346002)(230173577357003)(230273577357003)(230922051799003)(1800799012)(64100799003)(451199024)(186009)(55016003)(86362001)(33656002)(82960400001)(41300700001)(7696005)(76116006)(478600001)(71200400001)(6506007)(53546011)(66476007)(66446008)(64756008)(66556008)(66946007)(38070700009)(26005)(107886003)(9686003)(122000001)(38100700002)(83380400001)(2906002)(316002)(110136005)(5660300002)(52536014)(4326008)(8676002)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?TClMMD5bcTxiTuqWHEi0x9Ija6962QbTRu6muNeFps3FXSARKdsH+nJacnSh?=
 =?us-ascii?Q?yQbCUutdYIJ6mAswFB0QvEcGaprhLCpaj+V/3QbFTaw4YF6cMEYGmhIu5FcH?=
 =?us-ascii?Q?LG4lfcPVI0bIIzxWKKKllaTIpYyRX48WpZjcFN3Q5Ooitaf0bfr9QALRRdX8?=
 =?us-ascii?Q?QHrWrRqZ9Jbfb0hs9s+hOdiXpyz92Kw5xuxTOudmwkqUtdd2nz9JbLbJ9Rq1?=
 =?us-ascii?Q?6nCkjK2ZpDmSJtX6RvCjQ3rk3IN76OpvoQi5iaQ/aq/0DIfJSVCuOW63t0UL?=
 =?us-ascii?Q?7WB24lA/I//Ff5cUD8RngxKH4F+P+YsVJ14ffNTWTLxAyqqx3IjCaKij4AB4?=
 =?us-ascii?Q?hjbdxngr19HyTau76S7LXdvRqOgnCcBNOlP6SLwhZsN4FHYoHSdudttbM39f?=
 =?us-ascii?Q?oPBR5hsYeAdVYXW0laTA4RWn8fweA6M8xrWciYna1RPM6BSQECTTsQOFIAvw?=
 =?us-ascii?Q?h/c6B79quf44stiDTwDI8N7r8oIcoFi1InYAb8KACqkRg2ZkUepxNIZMvj+j?=
 =?us-ascii?Q?ZpN31U5QfhDpsOAIa6/V9eisBSE0cCVI9noqvsTRuEzK/P8EKSLPYs0dZLi4?=
 =?us-ascii?Q?+ysCZaT4p9X3WbfIIFfZ26xz4vtsYgql/Uv1IYGjENJAXg53jcD37A0EjAy5?=
 =?us-ascii?Q?NACFcL9zzWDIShWEGofDUxtOisY8QSCDuuy/uVq9367gZbUboLHx1jPFHRoK?=
 =?us-ascii?Q?Qz6cPaQMfsx0Cf/YbzQHj3JacoXlQumvHevAaOEs7fkMrV6117XFpw/z5H+v?=
 =?us-ascii?Q?NRmuTNOGwgZCcP8wWxypHHLcE566Cw761XEBD4LCPrnMjShpeW/ikwpmZ+k8?=
 =?us-ascii?Q?BRA3Syc1mUzcjIhAfsWsOezZhwcZpNXfRQAEq6F2MJlZDOIjkT6fhakTe2Yl?=
 =?us-ascii?Q?IQwNByrkOY/QDwRI1r/FOzQ2mGCn9trZrCpphjA4Gxs27PKHi9JKr2d/EmxQ?=
 =?us-ascii?Q?QVK8g7GR1WV23WAjDhSJgVD2ia7wH2dw3JzC0x6/0rSUqbfSmoTdSnhZF3jO?=
 =?us-ascii?Q?1jA9xNkWRjF7exMIrntFDEXOKWJvI1De4aNMyiDcyv7Zpna91UCuKkkVU4eA?=
 =?us-ascii?Q?b/B1OF2DH2aj45MQYZ+a+7OBAH9HJ3pMji15ZYD8JwrBeAEj29G5ykgBP400?=
 =?us-ascii?Q?pt5gpFCBklK06r6wrRdPi6np+rmlftUeF6J54bG9kzVljelIVM1rkTfbLW6k?=
 =?us-ascii?Q?5THPsRWAId1VlZa6mGijjCk3NjIZyNW3An8cSwcS27uE4W6CuwHf3JSKTqbj?=
 =?us-ascii?Q?zX1hIwGsZfE6OIGqMs/oXAt+Winx1bSU/PBxZueHgPgmPDaDoypps/16D6Bx?=
 =?us-ascii?Q?Rp2QXF3GVSBAqK5dJxzZBbWnYudoWNk546ANVAJm8OF6LlZE3HMymX8UOgKw?=
 =?us-ascii?Q?HqKovk7337ECZWuoG0o0HfIJ+KKTGNkU91kKvJoaC5Tt+zSBgzL7H3axB9e9?=
 =?us-ascii?Q?oz5L8R7ggzR5WF9/Z0pLlmAmxSiSSBBeG1Jf8++7z8/DVxYCTXueSe/krX0I?=
 =?us-ascii?Q?pm6vRlvfZkRpTlcFry0BGIUzrox5a7FWWAtGQ3XyQhfELjMvSmeWz476v+3t?=
 =?us-ascii?Q?po7zXjnoEWF9D4i6hsXZheKMoMmyZ28pNsh2pYCquOXeJkLM7WBgf5W+Ojb9?=
 =?us-ascii?Q?xQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a972ff4e-c1b3-41f3-ba03-08dbfcad62ab
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Dec 2023 14:03:01.7929 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Z+uhrXiiCJ0KJb2I3FYiLo11BfXJaelll3CVQ2cm+hsZ3QyVqTUQnrKn4dnTN+TXg8kBG9UBVYf9NEd+E1tLqeMQbuZ5X2amanUK3CwCtFQV0hscoxLldFnWQQPNF29g
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5582
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702562591; x=1734098591;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=pQ7W0lnpy8DEROgKLPPpgRSsL0tusgCpt4D4cwOMA4k=;
 b=TQNFovl0oXcsv6qNAtfzULNAwsMQIEJgzTpt+6knOZSrUw2A5VMAjEz5
 BAtWupPLJV+xUnZmL1RIBARO2UOxWd0EikQYB6yTsvFysogaJ0k8KQcYu
 NBldXDk8BSZPwbGQdaf3o+Psm+t7diYZU7MiSAC9cKVauj64wNMsda5xw
 9Aa33txXKpRtXrReg6XtIG0i7emfh6T0xnkg978nAQ5+PyQPRxpLhj1xa
 Q+tTAbNGcuMK+DLRQLvPIwOymeKhm53gV6zSwJmwnMEhyC+VZNpvjnrVw
 9i300f4CNg12bQwAa/bNj762rHi+XnBvDUWj9hg0FGeAgmY2lX77FQSvs
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TQNFovl0
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v21 2/5] ice: configure FW
 logging
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
Cc: "Stillwell Jr, Paul M" <paul.m.stillwell.jr@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Paul M Stillwell Jr
> Sent: Wednesday, December 13, 2023 10:37 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Stillwell Jr, Paul M <paul.m.stillwell.jr@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v21 2/5] ice: configure FW logging
>
> Users want the ability to debug FW issues by retrieving the
> FW logs from the E8xx devices. Use debugfs to allow the user to
> configure the log level and number of messages for FW logging.
>
> If FW logging is supported on the E8xx then the file 'fwlog' will be
> created under the PCI device ID for the ice driver. If the file does not
> exist then either the E8xx doesn't support FW logging or debugfs is not
> enabled on the system.
>
> One thing users want to do is control which events are reported. The
> user can read and write the 'fwlog/modules/<module name>' to get/set
> the log levels. Each module in the FW that supports logging ht as a file
> under 'fwlog/modules' that supports reading (to see what the current log
> level is) and writing (to change the log level).
>
> The format to set the log levels for a module are:
>
>   # echo <log level> > /sys/kernel/debug/ice/0000\:18\:00.0/fwlog/modules/<module>
>
> The supported log levels are:
>
>       *	none
>       *	error
>       *	warning
>       *	normal
>       *	verbose
>
> Each level includes the messages from the previous/lower level
>
> The modules that are supported are:
>
>       *	general
>       *	ctrl
>       *	link
>       *	link_topo
>       *	dnl
>       *	i2c
>       *	sdp
>       *	mdio
>       *	adminq
>       *	hdma
>       *	lldp
>       *	dcbx
>       *	dcb
>       *	xlr
>       *	nvm
>       *	auth
>       *	vpd
>       *	iosf
>       *	parser
>       *	sw
>       *	scheduler
>       *	txq
>       *	rsvd
>       *	post
>       *	watchdog
>       *	task_dispatch
>       *	mng
>       *	synce
>       *	health
>       *	tsdrv
>       *	pfreg
>       *	mdlver
>       *	all
>
> The module 'all' is a special module which allows the user to read or
> write to all of the modules.
> 
> The following example command would set the DCB module to the 'normal'
> log level:
>
>   # echo normal > /sys/kernel/debug/ice/0000\:18\:00.0/fwlog/modules/dcb
>
> If the user wants to set the DCB, Link, and the AdminQ modules to
> 'verbose' then the commands are:
>
>   # echo verbose > /sys/kernel/debug/ice/0000\:18\:00.0/fwlog/modules/dcb
>   # echo verbose > /sys/kernel/debug/ice/0000\:18\:00.0/fwlog/modules/link
>   # echo verbose > /sys/kernel/debug/ice/0000\:18\:00.0/fwlog/modules/adminq
>
> If the user wants to set all modules to the 'warning' level then the
> command is:
>
>   # echo warning > /sys/kernel/debug/ice/0000\:18\:00.0/fwlog/modules/all
>
> If the user wants to disable logging for a module then they can set the
> level to 'none'. An example setting the 'watchdog' module is:
>
>   # echo none > /sys/kernel/debug/ice/0000\:18\:00.0/fwlog/modules/watchdog
>
> If the user wants to see what the log level is for a specific module
> then the command is:
>
>   # cat /sys/kernel/debug/ice/0000\:18\:00.0/fwlog/modules/dcb
>
> This will return the log level for the DCB module. If the user wants to
> see the log level for all the modules then the command is:
>
>   # cat /sys/kernel/debug/ice/0000\:18\:00.0/fwlog/modules/all
>
> Writing to the module file will update the configuration, but NOT enable the
> configuration (that is a separate command).
>
> In addition to configuring the modules, the user can also configure the
> number of log messages (nr_messages) to include in a single Admin Receive
> Queue (ARQ) event.The range is 1-128 (1 means push every log message, 128
> means push only when the max AQ command buffer is full). The suggested
> value is 10.
>
> To see/change the resolution the user can read/write the
> 'fwlog/nr_messages' file. An example changing the value to 50 is
>
>   # echo 50 > /sys/kernel/debug/ice/0000\:18\:00.0/fwlog/nr_messages
>
> To see the current value of 'nr_messages' then the command is:
>
>   # cat /sys/kernel/debug/ice/0000\:18\:00.0/fwlog/nr_messages
>
> Signed-off-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/Makefile       |   4 +-
>  drivers/net/ethernet/intel/ice/ice.h          |   9 +
>  .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  80 ++++
>  drivers/net/ethernet/intel/ice/ice_common.c   |   6 +
>  drivers/net/ethernet/intel/ice/ice_debugfs.c  | 359 ++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_fwlog.c    | 261 +++++++++++++
>  drivers/net/ethernet/intel/ice/ice_fwlog.h    |  56 +++
>  drivers/net/ethernet/intel/ice/ice_main.c     |  18 +
>  drivers/net/ethernet/intel/ice/ice_type.h     |   4 +
>  9 files changed, 796 insertions(+), 1 deletion(-)
>  create mode 100644 drivers/net/ethernet/intel/ice/ice_debugfs.c
>  create mode 100644 drivers/net/ethernet/intel/ice/ice_fwlog.c
>  create mode 100644 drivers/net/ethernet/intel/ice/ice_fwlog.h
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
