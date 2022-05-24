Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C7AE8532B97
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 May 2022 15:48:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 737A060F07;
	Tue, 24 May 2022 13:48:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bJh6Uy_maFLS; Tue, 24 May 2022 13:48:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 82AFB60B2F;
	Tue, 24 May 2022 13:48:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 633441BF5B5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 May 2022 13:48:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4E0F060B2F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 May 2022 13:48:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id V5RstPrH6Y3U for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 May 2022 13:48:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 19C1760A74
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 May 2022 13:48:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653400124; x=1684936124;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=lbnPbej372S9BtEYfuXkJMQQ1TDB2jpZ7/Ov+V5r7qY=;
 b=gthCzwf2VNvE6QFL8w7gvdJb2rfYI7T3sNU0+qCqccetc8MrIueEVnvS
 KptVqNHZp/D0iQOY8aq2L/wiuybuICZLC92N3i9I2n9QMfs+HsDQ0sdgq
 akRP57r4TYL/Woo7fPya38q79ZV6e4j3rywY0vbZnBd2b54CKrmNvqR2s
 X9/PUMxknoyZvAs2JcdzZ0f+sIpOcHulqv65fwSoNx6Kf1TpvGUCSvYT5
 S8jvV0ZePyi7QnleTu05DcIpR8eN3QKGynKCBfDINJI6UpSJRwg+0dFZG
 W2giwOUe9zZYknyhByv4GmlBjZ6I14t8HKOE3BiJsYIFS1ADCKfRelqTD g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10356"; a="271107117"
X-IronPort-AV: E=Sophos;i="5.91,248,1647327600"; d="scan'208";a="271107117"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2022 06:48:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,248,1647327600"; d="scan'208";a="548480085"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga006.jf.intel.com with ESMTP; 24 May 2022 06:48:36 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 24 May 2022 06:48:36 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 24 May 2022 06:48:36 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 24 May 2022 06:48:36 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.176)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 24 May 2022 06:48:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZamO39jB++jqpdctUPQRbSNaD9hmgnLMtsCdlXS0iwu/lNFXoy0cPFZVDVEP5E/8WNopQn29S0XaTMNqb6Cibxz6zKeYPcP0Aue+//I6avW0UHfevTVojJyQSXb7AfNC+9au+r8sFlqcP9PhUhQ5nJNYPyvwOG6ta5wvDeMVrp73pk1GRlHx+2U2fYxxtC2u2UABsBajiu2nRz1BvFK++YBAQk7GmR2eMsfFVJ8/BpaVOMYjQmIBMQb77bVpAU/ygjJFTGBfIA6LyDpFC28G7wMMlXFPsptc6Xda9heY3CMFK7QTt3s8GzVtz+oCPlrzxT7E3WCSzEYerHO0cqVSYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=j6sLmYPJoeh4Ku6Ht4TlqB/cxJwHTptg0s3o9TEjygM=;
 b=Ebr7EQhXOfFUtlT3bf+m705PpMQ93BY9b20RqHcLuD5hAJDT1WD9PGbTMRgwWIf9li88i581alIXQRFQNYZtAXS+A4or6gzRCzQ9q2vfejizzirRg8Otj9gZ3Z/boWxaK8SVVBL+FoXDxnvwx4/i61NNWDQ6ECMxU81PHq/rkYBAvhMN/l7u5rlchFBY39OfH7fBYWqsql1DBtRhWqucpc/OwoUQtnIaZWSbDz1mRW2pYbzfKd6ePmiLs2K6E+iUHSigWRxScDytsmnqkZY1BmQ2MG8PSCIWhWerI5NNWxkMv10axMnlGDcwYmDPFXDD1rGptQ5P+ogpw9RppYyyUA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by PH7PR11MB6329.namprd11.prod.outlook.com (2603:10b6:510:1ff::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5273.22; Tue, 24 May
 2022 13:48:34 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::829:3da:fb91:c8e7]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::829:3da:fb91:c8e7%6]) with mapi id 15.20.5293.013; Tue, 24 May 2022
 13:48:34 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH RESEND] i40e: Remove unnecessary
 synchronize_irq() before free_irq()
Thread-Index: AQHYav8YvSxQus6dgEyyQfZcSCeqpK0uE89g
Date: Tue, 24 May 2022 13:48:33 +0000
Message-ID: <BYAPR11MB3367C687414EEDCA02E8566FFCD79@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20220518213111.2444630-1-anthony.l.nguyen@intel.com>
In-Reply-To: <20220518213111.2444630-1-anthony.l.nguyen@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 541a59e1-1bca-4253-d210-08da3d8c1861
x-ms-traffictypediagnostic: PH7PR11MB6329:EE_
x-microsoft-antispam-prvs: <PH7PR11MB632956D8700BB7240C932C5FFCD79@PH7PR11MB6329.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: mj8J0QsCTk30J3Wn9Sfabwu6I47ZR2zBLufZpmFKfTYl5Mu7gOnT46N1V+yYNvFvfKkzmikiKhuZr+7KAIWSgnOFUilHcRJV1G0etwTpLLysvovgVytUf4xRyJursTaL2nquUURmallCaHV3CKJlVJP9899sjmRAbyt5hzAjqDyd023J6sqD+H78+PwqSMAZ9IeqKlq0s50QHlLJd6kM7Gg3CtASlIsJRl0LbXEqg36bpnwFVjWnx+eAf8K1/HITUMOAfedMcPQkmttrFcSWrvnkIEoZ/RVjG6GckCnGHkM5UB4op1rEFmVkyeT0WA0x7+uizydblTp/kVCeIo9KXrwiA37czwH98OLEwAIiLxaWm0bpSVPexHa3iQBXDi/kqi2dczS/f+05yz6xJ9HlSvQaSBKpXTggoI0OQkUp7/lM6Y7vAAQlljKrEW+X93t/uel3rc73HEWvF8FdY6s5xLy8SZTp9HpSIDUY2PGPmbDu7uOvHuCpII8oz/29UbshtTxG956RGgI2MYAVeevdZXML4frWUDUQNvTW3IaT8foiUWHugemg/6P4d16x8Ewz0T0E8AFeNiWhxxcfOksBrSllw3r3M5aqUrmQ+/nRKmJVjnGj1bjPSKADQ44DH+UHFYg3Ut8imrCnrexABnevMYPcYNdxcgq5QCPy48McTaU/aI7SQ/N6dR3BRtd3a8VaJfIWr/NOXgyhxrSWOTdOzA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(52536014)(66476007)(5660300002)(4744005)(4326008)(55016003)(8936002)(8676002)(54906003)(66556008)(66446008)(64756008)(508600001)(82960400001)(66946007)(38070700005)(122000001)(2906002)(110136005)(83380400001)(33656002)(38100700002)(316002)(9686003)(53546011)(86362001)(186003)(76116006)(26005)(6506007)(71200400001)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?xLa7APo9pAcKhANfKEPzUqnxXRwNoYNIcTTE5J63uURzM9ZNNGS1LGnrPadG?=
 =?us-ascii?Q?X/TlAg9QqeICqiqNtaIY5k0/zK/PnQDM65esqMvOF2h94ksDR03ZgASvuTCM?=
 =?us-ascii?Q?wMIjLIzCmvEBj5DaqA3X29Rf2gL7B1FYPI5ukNoeNhjZvy0B2AD5AhL+UZW8?=
 =?us-ascii?Q?BQvscG7Vnifsi4z8Jes0FwvA+UedzFb+kjFmsdrA7IeODaOBBpkYwBgKm0Jq?=
 =?us-ascii?Q?khcYovwOuVBjN2QI8DW33eaN7+punF2ksTgiL1EC+FgE48ZNUFYtKRwK+745?=
 =?us-ascii?Q?Dz03GdaVxulZvzsLCuvYgtz4XapaxkKRGmVVMOdr8X6UBRNen/dS3Fomr/N+?=
 =?us-ascii?Q?n1vz3x1Mfkkj6/pac90VENG+kcIlDh8j/VDMYTH9h0MSFD//AOfIkt1jteKo?=
 =?us-ascii?Q?RqhoGUdiF9YqPFR6trCPq82sKwBEZCdaUg7d9x9dzAF+PDIFpONAJCcSwF6c?=
 =?us-ascii?Q?GAmAhBJ9MaMzEPuZFpRK489RRj5EVniKVVKoIudm4qN5//UNhoXBuEshszKx?=
 =?us-ascii?Q?jDiLRRF3Ro/cU2cJOfz+Fp+TdyaTetH4uTwnaHT8SIFUlfSXtWokXlz3ae/i?=
 =?us-ascii?Q?+b4DkyXknXHxa+QjnpVu11JZQLZUALxFDwywnYoDeP93IG+MNXx4bufL3KmQ?=
 =?us-ascii?Q?pVFJn+5yYJlN5VdgAvWMp+Vhir2lgJaEO1wq6r+DIVmZppWiwnJLY2Lv25Oh?=
 =?us-ascii?Q?MoN6c66JAwdr7x3dQgfhGPMKxT7JK1Xyqsy2mbCtEmbn54edQV8H5wjK0MaR?=
 =?us-ascii?Q?OGugNYJhOP+akStbwqZkwuMXAM9v76uiINqE2c+Fp99OrXgQD1LSzjAEHoic?=
 =?us-ascii?Q?2I0nIqufVx8nO4+yCSwbUUnVfdaYqxxeM0o6odB8oM9VE+tMd18GdEUBnTtl?=
 =?us-ascii?Q?61pXHW3s8+d/3SoMDB9WfTjsZpxWwvvTICoTBQEmdg6nG9l7cLXJ0imZnjR5?=
 =?us-ascii?Q?MI68jJL6KDwCejDxiRblKGiciLt0r0w61ZecJXsKih/yQf9dupigK+x4RMug?=
 =?us-ascii?Q?Vbf77A5ya5EkwULtX8NMnVRGZIfORLJBHi7Hf990Fe+Nnjj3XHEveF1ERF4H?=
 =?us-ascii?Q?YKVyJLKQfrrjZo4pH8fyycQqB+pBphfhEbTMgNIC4KEK7hF9dfccBtwG0u5D?=
 =?us-ascii?Q?wcoxvUd4lXBVo89Dr7YqoeL3oPPbP1oTn3GLuFCVcMBIXpusPtURsbZEKT6o?=
 =?us-ascii?Q?D9jRXC44Kt9ciYO7LK4nXP7YN6hUQdWOLqqnW9ka36AK+qHd1+mVR62jl6Jn?=
 =?us-ascii?Q?SzVk1Sncqmyl1JEcOFe/ZUf/7VsNRX4JqsQAmiVD0BIQ5VxsF75FKcmajYWJ?=
 =?us-ascii?Q?5h5hqgcE5Zd1yhB2wX+yHVTWailuhCNI+lXBa0rB3kPduyCS+L4OeiTeuVMI?=
 =?us-ascii?Q?gO5sxuLU1Zi3zi1rp8K0dbNCJvwFUHqpgLp0TPmJBIBsb+i/xLOXRxg8Xwgo?=
 =?us-ascii?Q?rrYtiJY4Jxp0ZBGEXCYxLS/3vc/dQaGolJ0u5sJOOUpEUIsy1fFR5/jDVvas?=
 =?us-ascii?Q?CzE6LQqoZxJDXcS6N6TsMBEnWt9BcICaL/Fn8Va/03YtuNQh9i2QH10lesp/?=
 =?us-ascii?Q?5+v6UXI9lBHS5C4K0i9WoXTeIwgO4+p6pYiWUhoyRAqjaqH3Z0jGL+9K+/3j?=
 =?us-ascii?Q?SYA3z1xrPJ8ao3KT7qsIB6CvxUzpZnkbFMw5EwBA3nEW7aCp5Ygwf5oMJ9ca?=
 =?us-ascii?Q?3z++FsdX4SsjqhiCV0rWtpz6wzTz9JCAei72C2IspNFS+KGYys3xPURGYDZC?=
 =?us-ascii?Q?Atw3S2MIeg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 541a59e1-1bca-4253-d210-08da3d8c1861
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 May 2022 13:48:33.9501 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZxCUqOal1Q3F0QeTBwdaJzF+CBQCcvAqkpjvffiXvJHxuupObUNdXHbLs0TSEUJhoCQHAKzTMRrkhOCa9CYt8Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6329
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH RESEND] i40e: Remove unnecessary
 synchronize_irq() before free_irq()
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
Cc: Zeal Robot <zealci@zte.com.cn>, Minghao Chi <chi.minghao@zte.com.cn>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Tony Nguyen
> Sent: Thursday, May 19, 2022 3:01 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Zeal Robot <zealci@zte.com.cn>; Minghao Chi
> <chi.minghao@zte.com.cn>
> Subject: [Intel-wired-lan] [PATCH RESEND] i40e: Remove unnecessary
> synchronize_irq() before free_irq()
> 
> From: Minghao Chi <chi.minghao@zte.com.cn>
> 
> Calling synchronize_irq() right before free_irq() is quite useless. On one hand
> the IRQ can easily fire again before free_irq() is entered, on the other hand
> free_irq() itself calls synchronize_irq() internally (in a race condition free
> way), before any state associated with the IRQ is freed.
> 
> Reported-by: Zeal Robot <zealci@zte.com.cn>
> Signed-off-by: Minghao Chi <chi.minghao@zte.com.cn>
> ---
> Resending due to mail issues with Intel Wired LAN
> 
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 2 --
>  1 file changed, 2 deletions(-)
> 

Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
