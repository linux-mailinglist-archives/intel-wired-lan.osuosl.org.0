Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A850678EE2
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Jan 2023 04:14:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D2BFF41754;
	Tue, 24 Jan 2023 03:14:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D2BFF41754
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674530078;
	bh=t2TsXf5gZu/VO2IULzSEPVkgjn4b6XVF0+pLQ7w9z2M=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1SOt/9Y523FaER63k5JkSEvXqfrROieRJ0MFJAhah0A+QtfHzXRwfw2eNWmOVN2Xi
	 PqGoeSKTWTnWLhvS9TTXPd++y323YSiU1UhzQPYd5aEcGq1rCTLm4kM5m/XKcR9cKD
	 SrzUWOtc4IZhPig2bzZ1Dor5/RGqNcoKkNHGxIsxzULk1xPkTTxbjR7V5Lex0XL8b1
	 ZYCjveARoisi1QAMmoogmcShFAoB+Ijwl4HOXr155WZ0nee9+JYxxRrl4HyoMvj1/Y
	 qxp2grkkj+QHPRVsa62W1dMjS176CsR2ZovOUk6jq/lGdsin1u1b/zUvYQoheONGay
	 D6g124jzuzCNA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NCvtkhePQ8Oe; Tue, 24 Jan 2023 03:14:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A2FEE409B4;
	Tue, 24 Jan 2023 03:14:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A2FEE409B4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2519B1BF2A2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jan 2023 03:14:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F19C1401F8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jan 2023 03:14:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F19C1401F8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GSpML726mtZa for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Jan 2023 03:14:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 10F7E401CC
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 10F7E401CC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jan 2023 03:14:30 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="309799097"
X-IronPort-AV: E=Sophos;i="5.97,241,1669104000"; d="scan'208";a="309799097"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2023 19:14:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="770165518"
X-IronPort-AV: E=Sophos;i="5.97,241,1669104000"; d="scan'208";a="770165518"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga002.fm.intel.com with ESMTP; 23 Jan 2023 19:14:28 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 23 Jan 2023 19:14:27 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 23 Jan 2023 19:14:27 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 23 Jan 2023 19:14:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Noxx2BtZ13ZGOkV2brU8FtAFsZ9cZ/FZWh0Mmy32R/dSRE0AWZBQqsUF1pIA9QI5DrLNfv4+Hg6RAJ9lAz6WvTI+0TMz5GhfNjlNIPXiFc8UQjB2Fq0bMe0LU97CFUscwa04aRFb+++1cGvqw0CBaV0Wk+HCsV0qSuXrqQvm6+uTukIVUSifVuy7/ah+mwusEDGk2oZmuKj9zsYbwxCQnBsVpwwqYMOf4u1U3a88h33dk0Ki4hsaV32l71MIz3oWdLrD2gNsxtHCTahOTW7tKZuPGp7qx1rj5Mc3R4i533Ne0+OGTee7X/qtaj8xmWftltAwhBfVWUwL+bbGknGY9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OVGW9b9IthGULpozn9OhTkI0ZzX4EX6LEZMJ/DZJax4=;
 b=MmlbQeTbA8+Ui29wZFvv31G3zAP4G+eMrekmQzhkuqi8jPzarpMqj7BUQgQEskNlX6W8NWS0ss+xOwRcq63c9DUZpLoPwtu+qtIrPWIQaqeR3aqGt6QBIXqcB+CQirOfHkOPfQIES2cXhTIueSYrFhW1XWGUn2UpJ2iQYKTFjMGh2+UYHZL8dI51m5zO9oG2aVqAGQAT327KL9EuTiMVV6vFcdIOdONiZQvbnkQ/5yqa3t0St9bL0K1/95FgBuA8MJjUHHZFSYUv+rjeqpmUjRQYS2j18+yz7+oUXoLByZ6NRmjEYDZ6SPVSnmzgZMydJZVGo0M4wyja5fABWvkl0A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by DM6PR11MB4691.namprd11.prod.outlook.com (2603:10b6:5:2a6::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.33; Tue, 24 Jan
 2023 03:14:26 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44%4]) with mapi id 15.20.6002.033; Tue, 24 Jan 2023
 03:14:26 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH] ice: memory leak in
 ice_vsi_alloc_stat_arrays
Thread-Index: AQHZJazDv9+iXBD0GEeZ7XwcOM41S66s+G5w
Date: Tue, 24 Jan 2023 03:14:25 +0000
Message-ID: <BYAPR11MB336761B94915E574561547DCFCC99@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20230111103630.17629-1-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20230111103630.17629-1-michal.swiatkowski@linux.intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|DM6PR11MB4691:EE_
x-ms-office365-filtering-correlation-id: 647c2edd-2b54-470f-6d7b-08dafdb91939
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: oYxy9PtdXuu/J4oiFf2uo0s+COTeh1ok8sMfitZFS2tvAzbg0SaWYDrEiNV30WlifSZCkmDWiR7k7W+WldJc0qnk6x3nLtlLI1pIU+OOwkb3Etl09KiXqV6gKLOMlwBv7lwTKW+cBIiAr3WY4c3SYpqbn/lM79JzbDlJMynCCn3LEGGTBQieptWPM2Uc/buvhQVmSEid/uXUgPFxnNxhX14eClpBi+9NjvTZmW6iJKSub80DGeSWuE/PwpWztPtxK9m/xFAo3mYziVY2sPpP2U3A0VrGmjfBVwBDSMBdHerQYRS/TfTS3k4JRdlj8s2BK/nJ8JRaJxOJpqhN9G7cUR2DHXnOfs0ElmgFaeLztbRtMM1aIEbMk7CzlyWALAyenodfWwllHEfmtSuC9jY7b/mne6vNKcuTnBUhrk7eDi79DhYB23wiFyznECh5xVHcJb57GduJAfmbqSmr6wjXeVUmbqGxaCfERbcFlN+zXSgpLGeZw+mC8bUVAvWw8WfSNhf7ZvlXRrGfrc7PTtWo0FQjexnWW3ADQrD85Y6VMlIQHKjCf7m0BYP40M2mHuMXC8vISLuZkLWjM1/H2nEJny5fdQqVpM26N62V82V1BdHLGcxLJKAd1JiRH1pMeQWuoFqfr0rH09/alIepSasoVcN0+n93DWUUH8J1zcAwI6XJygzu8o6Oykdz7JJwcHbUNKVSrki9lheNTQNJ5mqurA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(39860400002)(366004)(136003)(396003)(376002)(451199015)(86362001)(38070700005)(2906002)(82960400001)(4326008)(52536014)(5660300002)(4744005)(8936002)(41300700001)(122000001)(83380400001)(33656002)(38100700002)(110136005)(71200400001)(478600001)(7696005)(66446008)(9686003)(8676002)(26005)(6506007)(55016003)(186003)(64756008)(53546011)(76116006)(66556008)(66476007)(54906003)(66946007)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?cYnWVo6ldNRPv+0BkHVdqxnyZ4LIvS8b1XEEzHDb/hnRNZo0+Tx1ZxCbdBIm?=
 =?us-ascii?Q?HJn9of1WuXlnSMMRIOL1OkWJKEYGYkj6nlJaFO733akrvNQrWt+vuoaNyjcr?=
 =?us-ascii?Q?w+LtCoiaolKI1jcnBFZShnUt6K+GyALmMYW57pT0g3oZSPd0YaNEP2q0hHwJ?=
 =?us-ascii?Q?TT+6jDVz30+hh4zI2S3YTF6uzmAtbdZPIKvOi5Q6f31Hc2M3TLKWOZmUMilH?=
 =?us-ascii?Q?e1Jw7Cu0QKJiPL8tRvd1aOAq71WCyI9uXNvA/qSG/dazLd3/ky9frSicE9va?=
 =?us-ascii?Q?P3bhEoCY+jJus6IhPLg50gQv2VImppBqfeccNaxFY/eiybv382FmTifdFFWD?=
 =?us-ascii?Q?vcbd66JJ+Uptb2O+eB2Mulv66KDV4JMD2HZaeTF1slka0x/a3GK2FvcipKWU?=
 =?us-ascii?Q?6364zsalic2QCyG7HVXZWPd/+IMJqHC1q0517q4aWJYI1rXrzyp9/SOPy59P?=
 =?us-ascii?Q?3QkkJz23S5PeHU/2B9lgn+Pm8HvLEjddFJKceA21Esnxi2+FYW9KgaunRcTA?=
 =?us-ascii?Q?shdEuJIIniAkRGzrDrtwTYThKZfHajYnlTh6Se94nUD3+90Ciu+cPRnKCLJ/?=
 =?us-ascii?Q?N9DIWbywGguXH1QemtGP8llfjordnEswuUBYReY43/tVA5CNcgZ5llhZxpRJ?=
 =?us-ascii?Q?NwG3tl4SQ/bMYV6E7VqygdYfULM6iawQ9Qc3TUx34ANQujTuTyXZYFUuQ3pN?=
 =?us-ascii?Q?a7VfU6oi/UMFQFk0eu0JQvmNiTBwHgBykORruaZQpZd9yB+VGRx5yB8pWEtw?=
 =?us-ascii?Q?AgTDnaeD0glRM69LVV1GX8UTMfYUVrog0pJbbImWJCZGThlJoL7xuS8PChAk?=
 =?us-ascii?Q?eBnmX/Juxo/KEdxg3ZTS5UmoRJ+Tdsg+rXbxR4GFIc5+ehJXpHdkRfIMRpQ2?=
 =?us-ascii?Q?zZ2q4gSAik9XN8SOZNdQdbgc1bIK87oi3al9Mvk2PCg+RcgH9yBX7iJ0hF+Y?=
 =?us-ascii?Q?MGsNvUvdaaJmXQAO1cjmvjwl0EsgZeJ+d4rdItLxxhRQ/zvHLuhXW7poLY9M?=
 =?us-ascii?Q?dpVc0wkFwBDm9AdqjTDGDcsThAsvQcRfJtoXYJV6U+53oMI6bx3xVNm8NQ/B?=
 =?us-ascii?Q?CvsMzPxhDYE36HECy2XApCvaNbfdhcD/UjqS5Pc5jGde/hU/mwraVFlTGkF6?=
 =?us-ascii?Q?PHcWCpFuuGj25Zuw5e6GdmXIZlh5OuL44qfOV3+mY9vs6+6F2+bqjCGM3a1Z?=
 =?us-ascii?Q?7nBXRdRv4MYzQNfG1K50ePwxF9H6pQ4RCXNep8oraPU/ZMx29QRxM/lLQu7R?=
 =?us-ascii?Q?tyFajqmtgsMXBIonp+a+KSIafgsX4SkCElgzEimG03Eu58IoLpQMtjgDTOcH?=
 =?us-ascii?Q?oxcNvt3oBsJel7RuhQLpG9vv7WbeV6qS9pP1oQTJbrUiv1/gMeaUr68IRCvv?=
 =?us-ascii?Q?2hJsm4vjN5Tw+h+ROitwn4pbB8qk84o1N09v+Uv2bJRPLE2KCXwiBA59EtcV?=
 =?us-ascii?Q?luT9cnZXOw8vGGNSgFrOsXCLLe4TUdpUnbgdUQ8FRsxttAZX0VMDBgewzD+3?=
 =?us-ascii?Q?lgcHiMuBfszBI0aQwGYr0iILtLgOe2pf7wVbcspV1+N1IH080LN7e9GNDZpz?=
 =?us-ascii?Q?c8Ob1SRNjWc/EMWB9v/MgrFtHkST1dY0WqTS9DqR?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 647c2edd-2b54-470f-6d7b-08dafdb91939
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jan 2023 03:14:25.9692 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PmIrHEp+7JZEJhWMX8DJLxS1l4qre/QQiRBiexoe7YbTIS6EFubU885Jb2bVAI3vw2YtHCj+Ev5J3Apn9xM0pA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4691
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674530071; x=1706066071;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=3Ldxo+jmcNGP7zunMD7AvpX0fNPgtoTwFDTRJ8zvQ0s=;
 b=OQt4KmbQ2fV/lf8Ham2fvhCKuIsP0aLMlpc6xOPHOdcbKwxx/CxhESS6
 sXZV3c2WcS/2RT4VdjjeF+kL4m8lnsXLmBi0J1f90taXdTwk8AHXrfiYd
 urQB5KepF4ZeTAk35CqBi0jx7KoEdC24cKpUNX6na7ISzbENF/6PzXtqf
 N/+qdHjD4Iz2B9GkUtTMLB52ezgOhv+Gc95/cdZkqq++Z0qjhFpgFfIpd
 N2Ylm0q/zmjvHd9nMv8JXxXbpQn1pjWngPwBxdyShw0a358oON9lVTXCr
 apQPfXzkEUKJ7MjruGS+z/Q42yX0sZ7AZTFe86GdblVtZeGLtqEx7PzX/
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=OQt4KmbQ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] ice: memory leak in
 ice_vsi_alloc_stat_arrays
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
Cc: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "error27@gmail.com" <error27@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Michal Swiatkowski
> Sent: Wednesday, January 11, 2023 4:07 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; error27@gmail.com
> Subject: [Intel-wired-lan] [PATCH] ice: memory leak in
> ice_vsi_alloc_stat_arrays
> 
> Fix memory leak by checking if stats were already allocated before allocating
> new one.
> 
> Previously it was completely broken, because new allocated value was
> checked instead of previous one.
> 
> Reported-by: kernel test robot <lkp@intel.com>
> Reported-by: Dan Carpenter <error27@gmail.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
> Should be squashed with commit eace2cbe7f5f
> ("ice: split ice_vsi_setup into smaller functions")
> ---
>  drivers/net/ethernet/intel/ice/ice_lib.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
