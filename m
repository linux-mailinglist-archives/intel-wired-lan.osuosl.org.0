Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id AD5E43898A6
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 May 2021 23:34:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1A6BA606E5;
	Wed, 19 May 2021 21:34:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id y5jJJP9vF6KA; Wed, 19 May 2021 21:34:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0533560831;
	Wed, 19 May 2021 21:34:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 281DA1BF333
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 May 2021 21:34:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1F6A882F20
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 May 2021 21:34:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4QuXef9fDUMs for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 May 2021 21:34:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D1E9E82E19
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 May 2021 21:34:23 +0000 (UTC)
IronPort-SDR: rnMxYZja4rSQ7bvRZ0tdLp8doYWtBsr/Oc+TDtFWtA/7oRdV5TlcohEw2bhmN6ekQdzPcpUbpX
 Cg7R99a3CYTw==
X-IronPort-AV: E=McAfee;i="6200,9189,9989"; a="181360886"
X-IronPort-AV: E=Sophos;i="5.82,313,1613462400"; d="scan'208";a="181360886"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2021 14:34:23 -0700
IronPort-SDR: LzjpK9+kTlcdn/Sh10mPmfp9n2qSTYyYP0hFXjByvDWpLf9sV+Cknop1AJBlSNJYxJRO0biTdv
 Q/Qdqx0U706A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,313,1613462400"; d="scan'208";a="542868664"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by fmsmga001.fm.intel.com with ESMTP; 19 May 2021 14:34:23 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Wed, 19 May 2021 14:34:22 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Wed, 19 May 2021 14:34:22 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Wed, 19 May 2021 14:34:22 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.176)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Wed, 19 May 2021 14:34:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=naUCPLtZCiEta96LoOhyC7M/XCIjdj38gfeW1krrYH3gIYen5Tnj/CLf7NP3bwOEhaeyRaIeo1y5Fd/bMFod/fmYz+5VQzIFp6PE1b1/LBDkz5MTaut4oXg/NSPsjhRQ4+TEN5i7LaTi2qUJJEbptPUoRMftUzYcSJcXrG3Glm6CmxMTWiIE4CHsXwbx/fp6gt+S9EJD644LCIntv+vECla8i4Qak6+TJERSS0QtgCqpLgdvWb2RWKLCWuEQKujQfoXCJ5+sFLoj7qatO8inXOGn8hAo/uPfmOZ01Hstcof9K+lTcvLM1gMHXiImQI1Z8eSzGg57MsulzTBRdCVKtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=m33np3TW61b4kDnjNHbXvgiymOwN/GMRsTMOPLsuk70=;
 b=NKqPYnt5hkSDiH53N201nrluExvextOfW/FJdCj7Hfzo28v9gOGQMy9n+UWSo7ZB6wxtquaMiM1LK3wRFElH5rkUMR8rec0zgaEdfcCWuBoMEDNwvVkFhDIQYdjatygMxMrLd79612WVIFkaKYNW+1YVtAh0QYJwzq6AV3dboAkCitzkIlNvwzDcLpgRJLZDlhh1aqzUzav8+j7JB+U3sm7LE2qxjiO+LZsvLXdzafn0TxjxiNbTl8vjFYVKfcclGZBJ8rzyzLim6IM0EExv7mlTeNYKUcR9QkrMThrJgi33cXM3IU660WRYBSOVOdTTFxka6PuD46OC0o6jxlChqg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=m33np3TW61b4kDnjNHbXvgiymOwN/GMRsTMOPLsuk70=;
 b=zNADZKsheEM2z8RoWjUPVJ9/cVJQhGVBxabx4Gtj6GDvupuk5yAAyB9Eg+rcQgEd47hYqsK68z+/oYPeWhhIZKrqJFsYyjvNHjFLROWrgo/0lnH/12i/kLNZLXe+wW+6s2i/Q+fPNS/9Fpv6UUQhjgPZIzfCviIYP2sR004uSPQ=
Received: from CO1PR11MB5105.namprd11.prod.outlook.com (2603:10b6:303:9f::7)
 by CO1PR11MB4868.namprd11.prod.outlook.com (2603:10b6:303:90::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4129.28; Wed, 19 May
 2021 21:34:20 +0000
Received: from CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::4db9:fe34:a884:4e43]) by CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::4db9:fe34:a884:4e43%7]) with mapi id 15.20.4129.031; Wed, 19 May 2021
 21:34:20 +0000
From: "Brelinski, TonyX" <tonyx.brelinski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S59 03/13] ice: add error message when
 pldmfw_flash_image fails
Thread-Index: AQHXQo/A1dANKp6qAEKOSS+KnBJIqKrraDLA
Date: Wed, 19 May 2021 21:34:20 +0000
Message-ID: <CO1PR11MB5105F57E31857EA61074E869FA2B9@CO1PR11MB5105.namprd11.prod.outlook.com>
References: <20210506154008.12880-1-anthony.l.nguyen@intel.com>
 <20210506154008.12880-3-anthony.l.nguyen@intel.com>
In-Reply-To: <20210506154008.12880-3-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.0.76
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [71.236.132.75]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 74fd83c5-43fe-4d34-64ae-08d91b0ddd25
x-ms-traffictypediagnostic: CO1PR11MB4868:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CO1PR11MB48687D4AC5AD1E807D640ACBFA2B9@CO1PR11MB4868.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: IvQGZ4OFfiid7zMEo2PfPBZ8hjypTiI9saTxtNqrDJoBTLtGMZ8KNRy9kDQ/5zvxN34hvJq8Tr8QtTgwIHALZTAHvBBm6mkY5PshyT7XgWh8cJIL5U0QAfWI5139b2Yq7aqxsNJOrzIKcvfV5TVMvEnJk5onP6Hwkr/wc82homSoCNHXM3MQVVG2iesI6PQ8NxVM/EPr7g/KDbxYipgO2SgYhgqBnw40MSvd6O/oxo8AIUqfzBw5nlAre2LETGbGnIaRsNbQymrDdbJXM7nsBf6BD9tzarYJq5OMfw42v7jniNq9lm2kcmx1VkFmMFkKu8KL40lgQspWor+AHDtzSjQXxQ/RNW4T36xBHUj78B97iH1mZMcrxeBCnRhmkt7jVsEXh70LnUTCCqghq7G/8mcvV6elEL4NKQ0MBUwbmrcnUQCM1K4cFXtYMUgx9BEwIYiCtFkT/B4wI3p1EMxyrcl0URwH9DlyptxxBwHaRKd04H3tQ/qXOwbTURep8L2zsalIy+OZ2LHjIjJtNre4EoVk9dtHwDHodcX5us0RyZypBAuUv2H5i8d9+fhrHJ3UT/jyo99fp9ALDihVjwSsxps48tnP8IB/DqCk6V3Llsw=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5105.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(376002)(136003)(346002)(396003)(39860400002)(15650500001)(33656002)(110136005)(186003)(52536014)(6506007)(5660300002)(26005)(9686003)(122000001)(83380400001)(38100700002)(8676002)(478600001)(76116006)(66556008)(66476007)(66946007)(64756008)(66446008)(316002)(7696005)(86362001)(8936002)(71200400001)(55016002)(53546011)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?vhFtiROIMbXSDL8IYSnJ/MGAef+++1dPum/qOeFB7W5QWl1RvBkqXfp40AZ2?=
 =?us-ascii?Q?Lje5P4r3aHUpbKlpqFH08lt8vdzpDzf3OJ7Av6O2JzXl62htI0i/HyVxc0sP?=
 =?us-ascii?Q?rEyyheReAyvCH0bBL2uYZcN7VPFL3m/EAuh49pB8n0nxjTOkkLGkLavnXUAJ?=
 =?us-ascii?Q?O7mPm0a4ochCg4Vkd0vk2o1c9gWD+bbTr5EXtsGn3HEcjd1Aerb8P2Y3q/0C?=
 =?us-ascii?Q?GsW8cBjMVX65UFe9brY0s0j8aM2di5f1rPdBu+fF/3vA23UXFxeZWDIlMsMY?=
 =?us-ascii?Q?fSBCAS3G3gw5A4o+Jxt5+IBPMlfmruSqGJ9lH10A/vwIdK3eeoJJyKrargJ+?=
 =?us-ascii?Q?bgCnKG3ui3GxFNlwJyEzwzlDxCXZiZxqhjHRtElr+7Oc4AWrWheY0SJCJ4GB?=
 =?us-ascii?Q?j9/ezTrcRWvITt1k/1Pj9DYmE8+kmm0DRfGHcEtnxZ18z64jvobCQSRik8T7?=
 =?us-ascii?Q?+Q8ieKKK+gRiS5KP4gFcLQqSfUrx62dhSLmOf3MRXJUEd5tH+thMDsMjPQAz?=
 =?us-ascii?Q?fE6BcdrE30XTBpCPv+vZW/+LSu8NdOlAtKVnjYlrUX6UzIGnqxcDLckqigt0?=
 =?us-ascii?Q?7u14BiHLCOzb3N61OloV8n0k4Hr9INEcG80yohA3riPgIRU94l5g2DXA2Pe3?=
 =?us-ascii?Q?1x0aaYGf0eRstHu4ESpXCvLHhudez86Mtfma6apYuRSyvf5a6+CqacQO/FHr?=
 =?us-ascii?Q?1MANZD8tSV2b4cjoGZUWV7IJl54U8czD+yx+othboZ3+WIz52rD4dsBnFjq/?=
 =?us-ascii?Q?pOH0+CEbBKuwZBOsFYLi1MBQIqGCfwVW783qLYPhTEAHIFklKAUBUkiuPgXb?=
 =?us-ascii?Q?ps8GMMotXtBYBYQHMzXgFHemvct6xm7Nti4iprys0uvHWEnuNTFnH5QPuqtw?=
 =?us-ascii?Q?gZ79RLWsFQZFxm8OvU7Xbn8GTLBr8997Ig4B7GcTencYA5wavUOoLa/eY2FE?=
 =?us-ascii?Q?CP9m8fyyQJ0xjaxy1bbgnROZJiOu3Hq1vqVwWG9/32SKhP2dmQJCIDJLq7EH?=
 =?us-ascii?Q?0QiBp+mSjM2zOzsA8SP4adqupOZ9Y141XOuFtCiGErCpI/BmcQyf0ldX8o9y?=
 =?us-ascii?Q?KlD43eRlNwjMB3QSEppihCoN/DADNB3DHXNUMxULBAcqpNVi3NOdRSDUqcke?=
 =?us-ascii?Q?/xVcPSKfcGtgL3FaRwQNRSkjoaSw/YcSQniEks8I+s6AHS+NAiFUnyw+In3b?=
 =?us-ascii?Q?gj7kWLMj38Dvdp97rr/QAh4VEs7pG+ycar47/DzjkJ5El7Wzuyg/ljRx6BLz?=
 =?us-ascii?Q?Op/uEknRpSSa6/RSoVg+jmgdegFk75FLhuypoRXqNYBzOZqbr2hU8xWZEVFz?=
 =?us-ascii?Q?Yb5pvYzab0xB0GhGJD+KayVb?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5105.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 74fd83c5-43fe-4d34-64ae-08d91b0ddd25
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 May 2021 21:34:20.7489 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Zl0PSOc9aNbnXewc8Om9p2x5kGJ5AhdPDLAoRqgBEVno3KGi4scb5GAlqhLSMYC7NBS2A0sQWnCCUmpSy6XGun0NIchkErb5NrJHo4fkZVM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4868
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S59 03/13] ice: add error message when
 pldmfw_flash_image fails
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
> Sent: Thursday, May 6, 2021 8:40 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S59 03/13] ice: add error message when
> pldmfw_flash_image fails
> 
> From: Jacob Keller <jacob.e.keller@intel.com>
> 
> When flashing a new firmware image onto the device, the pldmfw library
> parses the image contents looking for a matching record. If no record can be
> found, the function reports an error of -ENOENT. This can produce a very
> confusing error message and experience for the user:
> 
>   $devlink dev flash pci/0000:ab:00.0 file image.bin
>   devlink answers: No such file or directory
> 
> This is because the ENOENT error code is interpreted as a missing file or
> directory. The pldmfw library does not have direct access to the extack
> pointer as it is generic and non-netdevice specific. The only way that ENOENT
> is returned by the pldmfw library is when no record matches.
> 
> Catch this specific error and report a suitable extended ack message:
> 
>   $devlink dev flash pci/0000:ab:00.0 file image.bin
>   Error: ice: Firmware image has no record matching this device
>   devlink answers: No such file or directory
> 
> In addition, ensure that we log an error message to the console whenever
> this function fails. Because our driver specific PLDM operation functions
> potentially set the extended ACK message, avoid overwriting this with a
> generic message.
> 
> This change should result in an improved experience when attempting to
> flash an image that does not have a compatible record.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_fw_update.c | 10 ++++++++++
>  1 file changed, 10 insertions(+)

Tested-by: Tony Brelinski <tonyx.brelinski@intel.com> (A Contingent Worker at Intel)


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
