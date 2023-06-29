Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id EA0E674278F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Jun 2023 15:40:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 83B61409C0;
	Thu, 29 Jun 2023 13:40:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 83B61409C0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688046006;
	bh=Ljrwb+hm9h6puN9wO3Me+y6XhO7Bo/5P5RUEa5il8R4=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=qSUeUq6XNAaFWBvnDe3sWiA2nmMg59W3qiKQe/ptfxULfMMXVX6B57tzdD5nsiJ66
	 zE0bNI/C8OmybB1bUl2Hte2C/oyzMx3duYP+hhcqW9UmA2mKfg/P6ldGSNIAMPGAON
	 30n6WYta3dzHVYhQ0O3p7Ra5RMFYqVpUJtN9ZBVSiwhwzw5yUW3fkWCJBlg5ccnhbh
	 7DpCqoDcEnQ4+KZn7Fg1vVgFCAcN310upA2+hP9JVuQtZC3OIURcIiNykzFU1xjlzw
	 KdG2Wfpep3OeBY8mTKlwljtwOXli507DpfKBcz+olyd8nK4e5L6NXldS5sH9DSPHL9
	 VsWL4dNWO31Dg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id s6xw6An4gZ_y; Thu, 29 Jun 2023 13:40:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A96324090E;
	Thu, 29 Jun 2023 13:40:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A96324090E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 627171BF3F3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jun 2023 13:39:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3A8FE40A7F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jun 2023 13:39:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3A8FE40A7F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id G9CZb04GtIi8 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Jun 2023 13:39:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3F02E4048F
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3F02E4048F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jun 2023 13:39:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10756"; a="342446451"
X-IronPort-AV: E=Sophos;i="6.01,168,1684825200"; d="scan'208";a="342446451"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2023 06:39:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10756"; a="717370215"
X-IronPort-AV: E=Sophos;i="6.01,168,1684825200"; d="scan'208";a="717370215"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga002.jf.intel.com with ESMTP; 29 Jun 2023 06:39:56 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 29 Jun 2023 06:39:56 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 29 Jun 2023 06:39:56 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.108)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 29 Jun 2023 06:39:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=d3q/6GgTI1q2mcU/m6wTpUwsN24Y8YSzAS8GO70uV2rrlkNd/ce3XglUBtGOGJMp7RD5yh+zRBZYPGj7jtaSGhjatIqH156DREKEOApQ9N7/unGFXOstxTca93rPb9zRgMLLEtr+tATpBdRbqGQlWjBCMI3PhgWG3s2646PeBBPzkq9g5+vbygTNlLp1sqY63wj2yHheG+iGBBVqIpUIHZDR7CdsqsDlA2NYPxxqY8P2LBZhq3C0l0t9YkRPYxQ60kGkQ+h5RI1O8LHSqCpmEHzH/nWGggBMppxRmFxvJ8K1vaEwRLyfUP6HX9q1OmUfsLSSHLdnQMrIHSISrX9GEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pI1DuIj8SPb92lDfJ8g3slMttOYTbBNwJ1wk85HZV+0=;
 b=QfIDeDM8Mj3FYLUNYr/rjeDr9PeYU9NDLz0Kg9nVn3M+5c8W7TMop6O83ynOdUAzZfwTVl3gDvasUzZ5CJ9OdDvPfMpy+pRVFK/L10ofpbYqnvIOqDA+xir+p/4khkcbcePyBqOD9viWU3N6D/ymtrTmIJibRRHaatj90riRQ7LddGEXQawBBShDGZjQ4aCzVfsajaCUwP5EzuHHVmRkH1Es3uLYml0Czq/gu0ZtvQpYe7r1hS3AB8rPIoeVUXjysXlHUU75u1ZvosY3zl6fb1oi+wUKkgRsz24JaVpDALbajjhdOUNkLTbrkencQiWifE+DIg3A3+7nciaffUjv5w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3521.namprd11.prod.outlook.com (2603:10b6:208:7b::32)
 by CH0PR11MB8088.namprd11.prod.outlook.com (2603:10b6:610:184::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6521.24; Thu, 29 Jun
 2023 13:39:34 +0000
Received: from BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::2134:60a2:3968:7298]) by BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::2134:60a2:3968:7298%2]) with mapi id 15.20.6521.026; Thu, 29 Jun 2023
 13:39:34 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: Simon Horman <simon.horman@corigine.com>, ivecera <ivecera@redhat.com>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 2/2] i40e: Wait for pending VF
 reset in VF set callbacks
Thread-Index: AQHZnfDxvSeWAOer9k2q/FgfXzcbo6+J9/aAgBfqUKA=
Date: Thu, 29 Jun 2023 13:39:34 +0000
Message-ID: <BL0PR11MB3521F019D9764F5D09AB87FD8F25A@BL0PR11MB3521.namprd11.prod.outlook.com>
References: <20230613121610.137654-1-ivecera@redhat.com>
 <20230613121610.137654-2-ivecera@redhat.com> <ZIl5t3x3/BDdHyhr@corigine.com>
In-Reply-To: <ZIl5t3x3/BDdHyhr@corigine.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3521:EE_|CH0PR11MB8088:EE_
x-ms-office365-filtering-correlation-id: 8910488e-57bf-40e4-5160-08db78a64658
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: fPxQEfGPjviDxLJ2XKa3B6sDnlNfa8F2VK7bgvHQ7nfQSgqjy72sQF38VDrwA6aOI2WT50e4CKgG3+Be9VO5s+VSwbYQ/1Y3QXJT5LiNRgFudm6iLDnmrNb90exUU1ktEMQXv/Wjw7lJ3vtCO5sNMyd2mEUpr4OkPVVTwtziyAM9HdHAh0bI7Xzv4mNEQRE9iW6h8QhdAQGX1Vi1GvXPxE8ZTQsMXuoMHH4aR5Djtip+18hgznq4XACq6jdBgQ9bi/7TnwYG7Kszhl1gR53Tr6vDLhL9FI6T82FFiBwc3DSWRXaR56Jzr/t4OLQJmczH9ZMDndP3pWqIfJ2CelXYJxelTVjzIVW5/HhaX0bml7bP2lV4adZzFNMeYMCx21jG9342YBsRyJRC81cgjfVOh2OHk/yXBO7eAtWJofb/k/zIkUm8mH8PaTew6Oi+8hs7jyVIxIG9Nn3XSVG9HDad5FXym/WR0I5mPUHi6lQ5lF5CkdUn9oPXzmK/Sv5cKifrgvlX4WNps6VeuG4YyKlzS1SjQLl5Q0A8PRvVwllaeFF3ArdRHu9/+jl4Rc8aH71toj/CKAJH4VL0CyT7mZu07oGqc1Sl4gYibRKo9x7ECzc=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3521.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(346002)(366004)(39860400002)(136003)(396003)(451199021)(2906002)(186003)(7696005)(55016003)(71200400001)(122000001)(9686003)(83380400001)(38100700002)(82960400001)(6506007)(53546011)(26005)(86362001)(966005)(110136005)(41300700001)(54906003)(38070700005)(478600001)(316002)(76116006)(66556008)(66446008)(4326008)(66946007)(33656002)(64756008)(66476007)(7416002)(52536014)(5660300002)(8676002)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?q/+/D9Urw5MaIzcNXo5Lmf1QxBCjI9/jOJaCUKBir4iKXPPRyWpulNctUR?=
 =?iso-8859-2?Q?SKaJ2IprthgAPcyHRdcnKr5ELowRS4zNmwcA9zLtHRihCYS5L/GAi1sRoU?=
 =?iso-8859-2?Q?s0gKpEeYIEVsqWk5RSqCyqJR5I5IaIrxiy5kVOqevqDfvLSiE8SnGm6XJH?=
 =?iso-8859-2?Q?YlQEqll/J7MR3iWRP1gjZptmDKnqSqDQ1T6cW75xQksnnOo1qY/VR9HHzT?=
 =?iso-8859-2?Q?e6v6Kxik9ujXiRg1rqgfWTi4Kgnjv3t1QBf8sgUT5DjwitkWS3K+w0rZE4?=
 =?iso-8859-2?Q?1Sh/BNSdjlsFA8m8lG9WZE85C//En22dOVXNmBdTX8fnGTre3wZzclO9Ai?=
 =?iso-8859-2?Q?9RfNBVX2eH4asi3y744j8EH1y5NdGVRHQYg7gku9HcKaGID0MuWZSP8aTF?=
 =?iso-8859-2?Q?7mOeac404EBwSVRTatgYIsNHEPtrvaC2KjGl1h3VcvHXOhsPtxKdqKdmnE?=
 =?iso-8859-2?Q?oHIGAOTVyIYzdlMgU7v9puPXKQiffH1/+P4e4NgErrKi6fV36gjlmwGYCQ?=
 =?iso-8859-2?Q?XdwgqskZS0DFC4q6fjQVuyT+acYOsAJszfeaQNljEooCEjIhvLyG9ntgv2?=
 =?iso-8859-2?Q?v/bM1Pgh22/QWwX2cEJZOP9/LLdYKAsvPZYLIRcnQTs3V3/quSCbTXTfUB?=
 =?iso-8859-2?Q?tje3hfHrNz+mXQEpjExun5aXZSM46/s8Vw/9Nk+zt4vwrWTv0N6XkXYKaP?=
 =?iso-8859-2?Q?Db3biG76vJNNMSngsvtlp7MqbShtMwnkv8qf+Q41MM62/njN3O/r8Att4a?=
 =?iso-8859-2?Q?cRaQqPnLhQerxU93l1R3G1QZagwS/+81X3vRTfhUKHcGfpYgxQIgfmTFy1?=
 =?iso-8859-2?Q?y2zGsnVP7jTdpEbO8DCsmImluA+SYyOj9vETU9TwBUQaI8lR3m952bfI7S?=
 =?iso-8859-2?Q?8rinYYX91rQDqFGYZo+onwA8SFu3rFUyRtmw1ewBOSFVpn37StWi7FJS+A?=
 =?iso-8859-2?Q?dZBJ1xR2u6rurDopbvZdcTlEPsyjSBTyYApfdJkMY4SoWY9MYnCc8HJtCK?=
 =?iso-8859-2?Q?1YdpV7jHbAkZTnowDofHo3XwyJZhjYXHJW+SBU+EAqSyA9+/ELvpeHYmlg?=
 =?iso-8859-2?Q?h2QjUsylL0ex4AQHfED2JkFuOGiyup4mNMuJecAYHR25cz0yx2tp0rh580?=
 =?iso-8859-2?Q?PvtFdU4rYTo3RPv4XKHjGv/03z6BAZ7zoMLiCbFw2KUDTmXuRbj11brJwd?=
 =?iso-8859-2?Q?I6zXXMLEAEoclrlAepFj+7Nyr9qf+SaZtLrcEl7DEcxLsYmlW/m1PHdViv?=
 =?iso-8859-2?Q?VszPgv8rGUQtYBi2welz1X8e+IBVKlhnJtvlDZRhbtyrLp8J5z3+mBKchi?=
 =?iso-8859-2?Q?L/WZk1tcIl/wVcvslyywhKAOra6JoBlpF8AP2lxxM23r+5zg/Yewb6H/P2?=
 =?iso-8859-2?Q?ZQadOx+yF/orh70CizeUfWvhuvnPpVsA0+Cf6lb7PVaO+cz3a2VK3dbocf?=
 =?iso-8859-2?Q?vLm0HLk0qDqLbsai3X0cKOS2zdUPcy0r4aIOuYmwNEWWvxSi3LW/RnkB1g?=
 =?iso-8859-2?Q?95+DSSkPhzJWHPhF1z6HBJTQ7DDDEMtLNSRz41OGbYywkSrHJz4z29PioL?=
 =?iso-8859-2?Q?5BcW34Qm5J1NI7VTUJtyA4bBt65RdXoq4eWsRriImXbZlb5gZzT7wh0+JR?=
 =?iso-8859-2?Q?NQkJles7syTuAa5l4mv6VHrE2x+olQI/Hgr3oesQf5pqMYM7YkH5mppg?=
 =?iso-8859-2?Q?=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3521.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8910488e-57bf-40e4-5160-08db78a64658
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jun 2023 13:39:34.2741 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CU7jpjWnprPYv6fE2UvKBYzglcmV0FZ9zKR/w7XqeT51h9rhAfQ8AyyKX3yHiTc8RF1zlggXOtSu2YqNnywsEJmuY2K9W7V1gXZbj97PxlA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB8088
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688045998; x=1719581998;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=pI1DuIj8SPb92lDfJ8g3slMttOYTbBNwJ1wk85HZV+0=;
 b=QMPpPLbxNJMKIHxO959LX/btPgs9FySSUnlWs9d5ZLIOfcakHVOScbS2
 0YVgESiX93YN+AZwMfyJsLufAgMXSMidxtF1cHgnXQX0mNIxeZLzgj/Vg
 2FzEpo3xX2zIw7ZKN/kVZwQPmHIcPiZxsRVmEIfgPNDGB1ukYsfEDII6F
 98ZeAGfOd3nBPFtRtlpPFgHuTFxYnjUYJUhcie24tiLii3Q+tMmfvNmMQ
 VfSlOW3CKbJ6dkJsAmbzh2pZ2Dq/b8tABFamMVOVnRBUwzRiyEE/+aYL4
 HjENzlZW4YZPLq0ZRfN36lKbD5i2lNO5gqqlHjbnjIXVYagcdKmnPmeBm
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=QMPpPLbx
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 2/2] i40e: Wait for pending
 VF reset in VF set callbacks
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
Cc: Ma Yuying <yuma@redhat.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>, open list <linux-kernel@vger.kernel.org>,
 Eric Dumazet <edumazet@google.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Simon Horman
> Sent: =B6roda, 14 czerwca 2023 10:27
> To: ivecera <ivecera@redhat.com>
> Cc: Ma Yuying <yuma@redhat.com>; netdev@vger.kernel.org; Brandeburg,
> Jesse <jesse.brandeburg@intel.com>; open list <linux-
> kernel@vger.kernel.org>; Eric Dumazet <edumazet@google.com>; Nguyen,
> Anthony L <anthony.l.nguyen@intel.com>; moderated list:INTEL ETHERNET
> DRIVERS <intel-wired-lan@lists.osuosl.org>; Jakub Kicinski
> <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>; David S. Miller
> <davem@davemloft.net>
> Subject: Re: [Intel-wired-lan] [PATCH net-next 2/2] i40e: Wait for pendin=
g VF
> reset in VF set callbacks
> =

> On Tue, Jun 13, 2023 at 02:16:10PM +0200, Ivan Vecera wrote:
> > Commit 028daf80117376 ("i40e: Fix attach VF to VM issue") fixed a race
> > between i40e_ndo_set_vf_mac() and i40e_reset_vf() during an
> attachment
> > of VF device to VM. This issue is not related to setting MAC address
> > only but also VLAN assignment to particular VF because the newer
> > libvirt sets configured MAC address as well as an optional VLAN. The
> > same behavior is also for i40e's .ndo_set_vf_rate and
> > .ndo_set_vf_spoofchk where the callbacks just check if the VF was
> > initialized but not wait for the finish of pending reset.
> >
> > Reproducer:
> > [root@host ~]# virsh attach-interface guest hostdev --managed
> > 0000:02:02.0 --mac 52:54:00:b4:aa:bb
> > error: Failed to attach interface
> > error: Cannot set interface MAC/vlanid to 52:54:00:b4:aa:bb/0 for
> > ifname enp2s0f0 vf 0: Resource temporarily unavailable
> >
> > Fix this issue by using i40e_check_vf_init_timeout() helper to check
> > whether a reset of particular VF was finished in i40e's
> > .ndo_set_vf_vlan, .ndo_set_vf_rate and .ndo_set_vf_spoofchk callbacks.
> >
> > Tested-by: Ma Yuying <yuma@redhat.com>
> > Signed-off-by: Ivan Vecera <ivecera@redhat.com>
> =

> Reviewed-by: Simon Horman <simon.horman@corigine.com>
> =

> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>




_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
