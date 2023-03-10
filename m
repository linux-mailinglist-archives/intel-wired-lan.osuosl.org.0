Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 189B86B4010
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Mar 2023 14:17:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 991E64037E;
	Fri, 10 Mar 2023 13:17:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 991E64037E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678454260;
	bh=gknYEuEkOTBV4so+lSrTUWRDCs0iHltIH6Res+Z81wc=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=DnHFli1eUVZMW5E0pYAB6DYgzJYxH4+0EquUIs1nyth4YhGcNqnb7Jwkaf1BZX1dk
	 MHj0jORZnJY60NF9H0dE3cqsLjjIQPtogz+Ccx6pCCeNIWj0nHfwdJHPu4viHWRWw4
	 uIgW0ice+z0faPfkelNoOPnL246aij/WFKmw2o3abJMLJauK2KwJKD/VzwhQVsOSEv
	 xNcUeqvJVu3vhEU0+ulqogfpG9dGNaQY25BEN093ftELANGQKOzvqKVg4b5uaI2myy
	 BlyhlG8aYW7QoqYCdI+p/GMlBceB5Vau38/dvgUHKVyivXXB1wAGW67+uA2HRwXBA9
	 mNWdp2OI0PQ1Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hkDCCprQ_3mo; Fri, 10 Mar 2023 13:17:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 97C3140374;
	Fri, 10 Mar 2023 13:17:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 97C3140374
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DA36D1BF292
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Mar 2023 13:17:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BA19160B8B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Mar 2023 13:17:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BA19160B8B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jf2CdylYCzLd for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Mar 2023 13:17:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A98C1607B0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A98C1607B0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Mar 2023 13:17:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="338277899"
X-IronPort-AV: E=Sophos;i="5.98,249,1673942400"; d="scan'208";a="338277899"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2023 05:17:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="923679560"
X-IronPort-AV: E=Sophos;i="5.98,249,1673942400"; d="scan'208";a="923679560"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga006.fm.intel.com with ESMTP; 10 Mar 2023 05:17:31 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Fri, 10 Mar 2023 05:17:31 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Fri, 10 Mar 2023 05:17:31 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Fri, 10 Mar 2023 05:17:31 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.44) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Fri, 10 Mar 2023 05:17:30 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GxixpPPjdr9Fdwhx/ZWW0XZ2lPjhjc0pIw6cpmiVY4PtZ1DrKcXnAY6kUo6YJqlKYOjtVsL9IOexRy5FeAA4fkUBKM/1ieQpzI5/Qfl9UATVXSfZDQVPKx3dSrVbNMTcU8+h405mhMbnycbVmCj303AJEzmMsuZpsycCW1FnLx1iJhnX2++VN9xJCDJe5RHghexEWC9Ek8izhGsvE0eqOGogwUg42oG8o0hA/XjMOfZeY8KDs6g/V5ZhjpmJyhinoDUdzXjqco4st5twK+QoYQUEvDc60or8590vW2HGMicslcxKLIQKG+3FJ+JNSzrnSSXOi03Ku56DYYZQrsAGNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=s0E0ISyVaNt/QAA2UnWxV+VhOG5C+htTrsoN6zurhyY=;
 b=aKl+dOzMWkLG/6VV6CfFIcZ+pXeb7uVqShxEtQtUuqGSAbYWnvF9XkC8MFiyTlb9XoqJ4bXZMrffMHCl+L7g2K8U7lnQQdTFmmIkqSbkeyxL9EZzifFYrQVqymXzd14Qox3qWaPOZ0N+7cPhO9AC8WhFNxXBoe0QpJ4YISkuaGk1Aeui1HNJua+XkMzSlhZ2ZX/iSL1K266JPM2gmdFBYjj218hcxWNX5fyEBYYm0lu4iAZXzKSHmUR6uDv7jXookVB6lcuWoD4chxaHvDfXLCoavuhk5sQXoajYWxO6zol+KF/MrMxJKOph2L3qUjQk/5twEztNUgowfbCalXWFpw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7364.namprd11.prod.outlook.com (2603:10b6:930:87::14)
 by DM8PR11MB5686.namprd11.prod.outlook.com (2603:10b6:8:21::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.19; Fri, 10 Mar
 2023 13:17:24 +0000
Received: from CY8PR11MB7364.namprd11.prod.outlook.com
 ([fe80::6100:7667:c884:a26e]) by CY8PR11MB7364.namprd11.prod.outlook.com
 ([fe80::6100:7667:c884:a26e%9]) with mapi id 15.20.6178.019; Fri, 10 Mar 2023
 13:17:24 +0000
From: "Szlosek, Marek" <marek.szlosek@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [intel-next PATCH 07/14] ice: initialize
 mailbox snapshot earlier in PF init
Thread-Index: AQHZRuGNTM+8RQY1U0S2CXJ92QcS3670F3gA
Date: Fri, 10 Mar 2023 13:17:24 +0000
Message-ID: <CY8PR11MB7364A58C6AFFDA9AEA27563BE6BA9@CY8PR11MB7364.namprd11.prod.outlook.com>
References: <20230222170920.1629293-1-jacob.e.keller@intel.com>
 <20230222170920.1629293-8-jacob.e.keller@intel.com>
In-Reply-To: <20230222170920.1629293-8-jacob.e.keller@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7364:EE_|DM8PR11MB5686:EE_
x-ms-office365-filtering-correlation-id: 7d976564-1d77-4580-26d8-08db2169c9a3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wtuVFrc4ecPHaPwh3lqUlzKNH568TERoOCVavpUK4a/5liKJKD/iQ3AEATRfgwe4K6FWq00WUz6SYoE4hmZAsxNkFh28uvncxWtbmplbSct1UsBfVmn5AVO02r0azvqXiL985tyayfWz8ijEtarA3TXc10tdGbT/77HWdWIwZkai5jXa3Lf1MwQKkPh5q7st8JOIKfM6BPXXDrOxfx/4rvLgLFbVdUa2NIakV72dz8DJzaQlVozgIPGCKDe41w2cGDOy9A1fnFle6FaNHAmcZWvts2uvYqnF/2BqP/PpGqRZcmzRQSHLN88gsKxr29hhCgJKm3HNqvYf97NuYcw2MRWvhEG1Hju21Z5Z0XiEGfQ4G2hbTBd6feUYYcr/YaVLsNcpDGWrugcvEwVbol96v9/kpDedbAxXAm09G/TR+0dB0h9kQuxOQ/JNzFCv5YhD7Pn/MkKZjoCYL9PtfNVUwYM2aZ/e0/R80niAbvgEHfoBB6+JfOAMPncWIp6uDR/IBMrZgg/TpPeJoF5e0rvYgNTpiCjuhIH8bHcTpj+YQLBNZFLgh8yClpruNtFpQR9UfWIZvujzirSXR1BDqSNpMZKrIjnGlO3VzHbpOQQLz7buLzsg3kfvlPLfxXQNn/lTPeJjFf7+HXmLFm4VfKeoUPruBTdRvSXjuCkJFKpokVchaw6jdeom6oaCXOZJWel+nhNs52UkEnAx19CEY0SWwA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7364.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(396003)(39860400002)(376002)(346002)(136003)(366004)(451199018)(55016003)(186003)(82960400001)(7696005)(71200400001)(33656002)(478600001)(122000001)(38070700005)(38100700002)(316002)(86362001)(6506007)(9686003)(83380400001)(26005)(41300700001)(53546011)(15650500001)(76116006)(8936002)(5660300002)(66946007)(52536014)(64756008)(2906002)(6916009)(66446008)(66556008)(8676002)(66476007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?QV6oN09ojx414qTEi1bENCuHRHRhes1om/LkB2B4csZyeNsDROMeWhJz1T?=
 =?iso-8859-2?Q?+iwK2+oC86TVpYgP33mxdxNAXTJnhCtDk2zxEjPfbmwR5dRP+/OH2duk40?=
 =?iso-8859-2?Q?H0T40JXcR1ZafZI8Xu9EE0sqDf9PczyOaoxN+FxQgDsQ9osMTGQqIhBjOc?=
 =?iso-8859-2?Q?TNEBYRAFGYsRBzBM25Y+erg3jFul1rUYs4m/H29pa/xFF6wVdhqvdWShFe?=
 =?iso-8859-2?Q?7C5eli+KgiyYIgJWLXUVeGj1OGu6vI4TXYemMP3ZcXwOZPB6T6ttIiYygE?=
 =?iso-8859-2?Q?2UIHqO1w8gAMsS2KkI0LCiHI2NGOzDEZ4r+kA5uBQv2ge1gTx19b6njpO8?=
 =?iso-8859-2?Q?4mdA49+w/sKP5vpPa4GasbBlk/+MTUF18y9euKRQ5W9Mihuhby+kmeqVT+?=
 =?iso-8859-2?Q?L0XnsGtgnOuy9dXEzBYLcE5m326GL5nEEs1JHIDNjxNeNAWcaIb8fqN+cP?=
 =?iso-8859-2?Q?+cuWHB25GzFP5sCWrkRPSZ5+dnfIog5jLWeQ4FcYP+BJdz0gB2islMQsqO?=
 =?iso-8859-2?Q?9dpu/ZsauAl9pjw15Cgom1guve+1mXnteRCFR/PiEz7fCNGdCylfXrQqe2?=
 =?iso-8859-2?Q?mGti7cVI2T+C7db6G8olTJ5jixObf2r9BzTHVT7hUdeIR+q7y8YhbEYTMH?=
 =?iso-8859-2?Q?iJjBp4joTRKjro14UKgg91zs90gUBqOaS2+HsOg+LsurNFcBj8511hP/yA?=
 =?iso-8859-2?Q?QxgG3wBIgfrU2F8doZdkEZaQ5bhXvOw5dSOZNujemGY271OWL2l2LsGKst?=
 =?iso-8859-2?Q?gKWmoQeKrRSvXEl7UnnBuPjNvmGTzVX++57ZTNdFfwgEH1cTtlPFoaafsL?=
 =?iso-8859-2?Q?AijY+SxxdpyAZ7Esaesd9DAIzT70aZpVh0hYYBCkVD4gnN80P//Vf3DUYE?=
 =?iso-8859-2?Q?5lGVc9+1qLqiHH8sdy/w0iqJiWdGZjfXz4KNvQ6HXcOSsue1xZlc74oqM6?=
 =?iso-8859-2?Q?nxqcJpdc25A7LKMGBS3LM7QB27mtpZsnEAONfc/W2it7T47QXNwRPZv7rk?=
 =?iso-8859-2?Q?ku0Iu143R4pKa9urkxD1kgCOzg4u6Jzb4q+hsO76GUWPhrtU5ZyKclH1K0?=
 =?iso-8859-2?Q?77vlfo/T46hdWFx8qxKYAkJNfwYj/6lIYW5SJrWlODvfwe1Hnk5nVd24jm?=
 =?iso-8859-2?Q?j58lp+YL7R2gH37fvlRnUAH9e+AsiTKwfFhwNK2v7Vl1LbGMqnE+YOkn3Z?=
 =?iso-8859-2?Q?BKgFO5Y9PF17fONE3/VZU6sGwesU9CZvi0u1xdmnQcwoTsvdY7Bu8gSFD3?=
 =?iso-8859-2?Q?xl09j0JEFITm5e7bOJ00AXKk9X6dkohDmZEyzvSqtT0OZT3+rC8RDPpH2j?=
 =?iso-8859-2?Q?DA8e59PNpxJU90olSyoqqF371JamB6xfXbkIa7pAXOZoe830hMIBDCp2Q1?=
 =?iso-8859-2?Q?3qtsL4vPp1DqUTaRi2T0wNv/NN5wAZeVZGzy+mqC//L5VSZ43lwBp0O1iI?=
 =?iso-8859-2?Q?Z08ecOQ6fXK7pulyZFnCQXgdNtx47bMaKrehW2wXMyht8rHRu0tVLJBb7X?=
 =?iso-8859-2?Q?kBZDZIpTd0AD2HzE+332zw/hR5A40gD0ZbSN+DUgFmFkJpW84g6neGYCRw?=
 =?iso-8859-2?Q?ItRvg1cSdnEmKtW3EapNQGjaNfeVJEpOXv2ATZilorFSojNtW2GuZ36M1o?=
 =?iso-8859-2?Q?SvRv3HidgyzTRbHmNvpBDZUAZ6sKG+nXL7?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7364.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7d976564-1d77-4580-26d8-08db2169c9a3
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Mar 2023 13:17:24.0940 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: i4SRtqZ0u61s1qqzKPJ0naFBIKp6sObAwSpcMUm8TA3W0l5iXA+a241pxbzN3N8h1jFzoQ4QYAExWuvT8owGTA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5686
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678454252; x=1709990252;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=qsErkWIj8so9IV5YSHScI4E2iHExcV94pEjazr/yUrk=;
 b=gOGF5G0Au+iJ1hIA6HcbQhUG7hHtKKdS2HPN2gTVgG4+55npifHVvWFR
 j2WvU6Dl89fYj6RcJT0fdtKvLDbziY4nED0N2NPwcnhj3g55Kek6qhhKy
 7Pebp2EU2UR+bRjFJnfelI+ayWkuuFML4uMvyBmA7v5IQLuKZJru0lwHI
 aRIyJNDlI6Ja3Q/ukg3TQY8IQz7xZ2tyRMaT1tqULZqdlbeukWxcc9ygb
 8fzu1QSAxw/LKbrUCZuTPLdPCjQOlrwdhSNQZVfsK/xKpJuwwt07XXjYg
 t4bQKxI9LOsMIgnbURFmOm8i4SdfxIBTTjI1ADk6lBBuGWgt3LCURZDbE
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gOGF5G0A
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [intel-next PATCH 07/14] ice: initialize
 mailbox snapshot earlier in PF init
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
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jacob Keller
> Sent: =B6roda, 22 lutego 2023 18:09
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Brandeburg, Jesse
> <jesse.brandeburg@intel.com>
> Subject: [Intel-wired-lan] [intel-next PATCH 07/14] ice: initialize mailb=
ox
> snapshot earlier in PF init
> =

> Now that we no longer depend on the number of VFs being allocated, we can
> move the ice_mbx_init_snapshot function earlier. This will be required by
> Scalable IOV as we will not be calling ice_sriov_configure for Scalable V=
Fs.
> =

> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c   | 1 +
>  drivers/net/ethernet/intel/ice/ice_sriov.c  | 2 --
> drivers/net/ethernet/intel/ice/ice_vf_mbx.h | 4 ++++
>  3 files changed, 5 insertions(+), 2 deletions(-)
> =

> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c
> b/drivers/net/ethernet/intel/ice/ice_main.c
> index 567694bf098b..615a731d7afe 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c

Tested-by: Marek Szlosek <marek.szlosek@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
