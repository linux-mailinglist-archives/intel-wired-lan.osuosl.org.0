Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id CD79537EAC1
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 May 2021 00:05:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 68F0E60682;
	Wed, 12 May 2021 22:05:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Yoblo0nrkBmH; Wed, 12 May 2021 22:05:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6476260661;
	Wed, 12 May 2021 22:05:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 450D91BF392
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 May 2021 22:05:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3311A4054F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 May 2021 22:05:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YDZgG-cDIozG for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 May 2021 22:05:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E224A403FE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 May 2021 22:05:23 +0000 (UTC)
IronPort-SDR: +jeSlypJL3YZAMlf7JvrGHkECsLTT/CFQtqccAPkxHTkvh8y1wTaFXpqddKHcG9kZD34xp0YcB
 ZtYxyLUwb1Rg==
X-IronPort-AV: E=McAfee;i="6200,9189,9982"; a="263742969"
X-IronPort-AV: E=Sophos;i="5.82,295,1613462400"; d="scan'208";a="263742969"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2021 15:05:21 -0700
IronPort-SDR: 6BdRDv1TDWcaHhg3nytq7L0hKWjq5DcyBZS5pMRO6OVXnMfvgD1fbKv1kChd8QTqNEcJlVW0mP
 zoQXAoXKIE/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,295,1613462400"; d="scan'208";a="622922358"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga006.fm.intel.com with ESMTP; 12 May 2021 15:05:21 -0700
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 12 May 2021 15:05:21 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Wed, 12 May 2021 15:05:21 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.48) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Wed, 12 May 2021 15:05:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hNL6Xui/+8EIDZbnsUR2/GRW0/bjO95Abtm94eSaTmQR0I0s2rgZZ+beszUPnfVCKehI1P1xqFMcb+eqKBOOVu/r8H/TPCgfhUK4f3hQWZGbwqeyyEuw7rEdZ90+GJ3F3UVy55UsQQI38EUcw/plqqaKB2Q/4IXdHLGqHgqp7eodasdy/DaFcVj98Zs4OFCn8imf1h0tK57DlLEFSK2VAna83RbZF/5wMXlPa/Qzcivj7uDmSQvqT0u2CIazYXHLp6eBSat488oucDc82A6e+kXZ5GaDP/MomGPlqOpsjMG0ePKqzmVxCuMJIortMR53JerjvsI2oKZrstct9noZJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pHg6g6kJsJlp+l4b3rKW5TEue8DAvAdGRtizdM+UtQ4=;
 b=YPn/E5glJ8uniHmI2TjpWjzEWWKhap/Ol9gPcXQIYCSUikdysywknjf3WJsKl3NDLch7DsbMR0DKdxSAGbixk2WKIPvo1C9raT8qaLWqr5OtnBrX0VpuHHlqt7Yuaag06Rnm0dK//P4MTMvfQqTId72k19WyP+JHxgYT2+y66kMHFpJ61NqfrRullsbZ/zpL4gmfTF7U78/dE5rUbNrdRhiYlVlSp7ox1wl8PuwD3YiT+n6DcxDzrQz9UuCsj1x+RXv+ttVn/scUW+lOt89eJYsNGLBaKifFqbs5hsS17ljzeewkjQPuUQYNQFKbjRN75HypS068ENGln+yXzJk3qQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pHg6g6kJsJlp+l4b3rKW5TEue8DAvAdGRtizdM+UtQ4=;
 b=tfvIBvl8NRSTNTnylp5TL0h9bqGBNavf2IF3+wwMMN4uT1imUd5045ENfR5a85y4WIb9hQZr2uw7D6IuneptNrT5g1Zvx4kVDN9Nz6ZsNDY1+7h1VoEleHNQdLsVlrGUmejOaiOGiHNpmG0x8ZPswZwayrHy6nIJxTRkcwXh7as=
Received: from CO1PR11MB5105.namprd11.prod.outlook.com (2603:10b6:303:9f::7)
 by MW3PR11MB4716.namprd11.prod.outlook.com (2603:10b6:303:53::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4129.26; Wed, 12 May
 2021 22:05:20 +0000
Received: from CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::4db9:fe34:a884:4e43]) by CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::4db9:fe34:a884:4e43%7]) with mapi id 15.20.4108.031; Wed, 12 May 2021
 22:05:20 +0000
From: "Brelinski, TonyX" <tonyx.brelinski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S59 13/13] ice: remove local variable
Thread-Index: AQHXQo+wipZ72+XE1kahN2XREQf47qrgcJtg
Date: Wed, 12 May 2021 22:05:20 +0000
Message-ID: <CO1PR11MB5105273129C9D75DBD14D09BFA529@CO1PR11MB5105.namprd11.prod.outlook.com>
References: <20210506154008.12880-1-anthony.l.nguyen@intel.com>
 <20210506154008.12880-13-anthony.l.nguyen@intel.com>
In-Reply-To: <20210506154008.12880-13-anthony.l.nguyen@intel.com>
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
x-ms-office365-filtering-correlation-id: ebdd1285-8343-4400-08af-08d91592087b
x-ms-traffictypediagnostic: MW3PR11MB4716:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MW3PR11MB47163949B5C23CEA0B5E3673FA529@MW3PR11MB4716.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:431;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: AI9zi2b5jjO/Us2W1WcEqZuYcvMKsWi1UcrjcYLKDuW1dOpqan0H8xc0rDtLb1s49pMrAiWS55Fa78B862M7eL+QUVnutIpMcpr+ZPsrxBnvcCBhbWoDnsBP8z2soUiWRISCzuMiYtqg/KK04BIu0vPc8Cta9XI5HnEo5LHqiyLHw6es2RHo+UOzk3AMOp5H9cMV8bGfOfASuV/C3ciLyQNoUK1kMELMIAve790se7ks3hpP2BkXioDtFlXAUEKBOXLBkS8OybUpQot6ws3d2A64HPIdrKlwLEVGQwI6gSoysYwMfpQHN9u5QP8DMmgf2zWPb/rE0zpQy2AnRryGSCmCP3x8X8gTEnEY45W6HCGUKksRgi4u1UWJ+uts5rce1ehz2XggP//537eNa63FWuniOBXtXKU/mrmY6cNMS0iVmkIVCAmoEtD4P1W5uQXrlWr5X2S/8b1sWfdUczycuBVwkJhjm6a0mkMtITLSAzHhVTy7Fo0uVhwba3tPf2FsbDhcEEJzSotfF8Sqb+AZqRyQ/CfhCpNxIR5/Rfnmsi76oIgUVR2DWCHICmE90ankpgONJcKdDdatbQ1GMRnGfvnrT5E9tAwQCLYJlQzQ4ME=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5105.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(136003)(346002)(396003)(366004)(39860400002)(376002)(9686003)(55016002)(33656002)(83380400001)(478600001)(2906002)(53546011)(122000001)(38100700002)(8936002)(8676002)(6506007)(64756008)(26005)(66476007)(86362001)(110136005)(5660300002)(66556008)(76116006)(66946007)(4744005)(71200400001)(316002)(186003)(66446008)(52536014)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?jDHr3sDrBkpdVJqzcDVWq55Ia6yonH0j2/IbE+ajHMQ4tudTYLHq+7WQm/jp?=
 =?us-ascii?Q?itzQsCgSXvjB+jMmDSpsZTQHFEL4PnbbPok0UbOHj1bN/wpPyI/z+SJIYrtw?=
 =?us-ascii?Q?D0lHZOtWYtB8UkxMQJe3SN3k16RIcpA4i5OWLLfU3MrpSPWgYcDnZtQMeM+J?=
 =?us-ascii?Q?szxZJzMS1jbF+THGJU8oL0EWOrV7lk5N+S0HgsJEET0Jf9wK0IL1CF1l0Q/+?=
 =?us-ascii?Q?189XZKkPMsQhDwq8f4Szk/phUvVYppQJVfcPUwb3zI4QqnxM30/aNvSvDwxe?=
 =?us-ascii?Q?NsrwBXjU51XG5De8f6EPIcCyf+sZzUML8eocxy382CvNR8gjKKX+KM7SblEF?=
 =?us-ascii?Q?3SXaYDGIsussCe8tcpEjHmAIcj4qMoIwH9KmuKfD5s1R3emmU4QwdHUvzb6x?=
 =?us-ascii?Q?9yyAgwnP3ha4tttLulIGbBFDVnaVuO7l6wmeHbvpaoDTMGSMIOmprVjCknUa?=
 =?us-ascii?Q?NFY2Aa/NGmFTOenyswwA6XiF7k6g/sqiVIghxNpEWruIlGmzbQAz8MBqVyAh?=
 =?us-ascii?Q?BYictRItzxeyIl0Kr8RIx/67TEUrq6BuAzAZmULga5Ss2lD/TkrhGzfKKsIJ?=
 =?us-ascii?Q?sIhtDqqGToFL4omOOp3W0ijSwUndOt/9uSJzG2+J8GnnM2X2H5rXL5NH7s1v?=
 =?us-ascii?Q?axaG1qgrhFVYyu/QwQtuZuk80sC6dtUdsJB8ZUzcz0vHWfWxtS9wqt42uhEx?=
 =?us-ascii?Q?5lbl349O+nlvEkutKtdlbok6q8Cr6gagPKt2eVsIL7sJCmeX0V0fuzeEUFes?=
 =?us-ascii?Q?pv61TEpxbH/qU88eVzc3CwS8n2wgynEhFFcF64F+IimiKPOoyzpb7gYC7sdk?=
 =?us-ascii?Q?V5/WT6hUkaY7FtMgERvA1VTJZTfZW/FhSMFqOSeO7PgnXJhkadwMrMZhI3yk?=
 =?us-ascii?Q?dSUaRMsG8ZznFOkWYQN6zbuRXg276WfSVnUVQtlCPgc+X2a2BCxzVVPzKvyl?=
 =?us-ascii?Q?S1IkTti9muKmi5LXdps/16bI4V9ARvjI182jehGJ9ro0HSNHgH8kI2qr0anc?=
 =?us-ascii?Q?yDgQjTV0B5M3snIKHTslytZjRrO1JBvaNACNk1PbCQIMiJNNgZpMSiJnyAk6?=
 =?us-ascii?Q?qR2Gyx6LHif84kKua5KQoSY0z1qUcCwgWsDy+i8hQ/IIdADBwvHX6bke1lWu?=
 =?us-ascii?Q?sd+Q3a0IG+dRE5XB+9AgFFu1ljipkpr8RynnyfegSNy3Sv0sVTYOVlc63Yrw?=
 =?us-ascii?Q?r/4bM4E4EgwiIAi1uroCBjHmLHf1wdKuHn9d/JwSVlnLHvPh2A2why+bzwdi?=
 =?us-ascii?Q?FPJKkpbH8qwk0WlxpCDzaFRF0E/Kui1yGbmrnC5sdz5HAhD5lg8GaOei2bsA?=
 =?us-ascii?Q?34YT44FDhRF8snj2uPS0JBZ7?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5105.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ebdd1285-8343-4400-08af-08d91592087b
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 May 2021 22:05:20.0697 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TjYOWje+B0NfomMRSP7AeGgp94MFYHugI6kVkri3DHu42cRyztJs0sNHXU5roT7441lHAvgkXRJnujGaa2R8CoTt5ZhduZMrDfThhhOqo/4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4716
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S59 13/13] ice: remove local variable
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
> Subject: [Intel-wired-lan] [PATCH S59 13/13] ice: remove local variable
> 
> From: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
> 
> Remove the local variable since it's only used once. Instead, use it directly.
> 
> Signed-off-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)

Tested-by: Tony Brelinski <tonyx.brelinski@intel.com> (A Contingent Worker at Intel)


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
