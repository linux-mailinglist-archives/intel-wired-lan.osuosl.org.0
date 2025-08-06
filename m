Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B84A1B1C41F
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Aug 2025 12:20:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 606FD60B9E;
	Wed,  6 Aug 2025 10:20:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OWlPowI9G6OX; Wed,  6 Aug 2025 10:20:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 97EAC60BB8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754475646;
	bh=vnbxjXcKFeujBnvval16ExMzO+qzXPyWX9jIQ3JtAxA=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=WMqONviGTSvoECKrHEFsjNjo/43QJDEJCm2oeCrinkeuhY1PJ8p2gGr39l88omMaZ
	 8MMRuF7fgHWQbDKJF4Cuk8SCzaSLFGX+AD0DCE+t2U/XA/lv86uQqh/UAOm04qdA0k
	 QJqQDRYnHQdJo831OPbMX6mrF2JrPgZS8bz9caBckGxGl4E+Mpiy+pCQJe5ooHYcJf
	 yDKG8/oRy3vJ9QlgX0m8HFW1iadeU5oYKzovGuaqi9xa0LJgM8L9mtIybIvRXvmynb
	 Imo5GYpAT6QSPY3O0da29poyysy9teEmL+ECmiP/R1eA4YgxcQT1q/PHQGkKVwAVzL
	 96S6qhyYaKt6w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 97EAC60BB8;
	Wed,  6 Aug 2025 10:20:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id D384D31
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Aug 2025 10:20:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C53AB60B8C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Aug 2025 10:20:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iFjHxe4Cbyi3 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Aug 2025 10:20:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6FD406073C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6FD406073C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6FD406073C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Aug 2025 10:20:42 +0000 (UTC)
X-CSE-ConnectionGUID: ZavWTlkWTAK/AS7olqOyAw==
X-CSE-MsgGUID: MW/GqmnZRe2aZHPwlJX3fw==
X-IronPort-AV: E=McAfee;i="6800,10657,11513"; a="60421176"
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="60421176"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2025 03:20:43 -0700
X-CSE-ConnectionGUID: S1rXxA5AQ/qMxughVXeLfg==
X-CSE-MsgGUID: uvOLgzx/QIWeyVS+9X05ew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="165509510"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2025 03:20:41 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 6 Aug 2025 03:20:41 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Wed, 6 Aug 2025 03:20:41 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (40.107.95.67) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 6 Aug 2025 03:20:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PiYmNhlHHn0ytoQEfSD69edM3FOh6DR6vfRpwhXgUiJGRfvBN2Bnj36ZEraNu9fPuCIq9wActgn4HOIi+yA5UBQnPXfnPHvAC5uE1SRtddiWDALft+FJFiNadUutTvmVGvMGVuYqP8tUXERf9NBHMA9Zd2Y06mD70zL2ACbkamhkI/RNF18WhpX0jdH30bMZ229/bLCaLER914hCok3sb/oVeOpjBDQCdvKPUgLd1nBK+GXvEOOVq1tBeDOguo+mzRRu6NK5f6BlZP+Rjs9SIyr5SJR43EmOxGHj0+69ZVQuXih5SQnFIr/rxUFcfk3ZYLaE5JDn3tL6/FUfFPhSyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vnbxjXcKFeujBnvval16ExMzO+qzXPyWX9jIQ3JtAxA=;
 b=tTx9n2s/r79hU38Z4PV7TRKEW1IBtWBX9GZb76hhVrVzgYkC6jNu5lC66HZGJzPry9Of/lyDrH+YK/DAgZ7ro4WkUfbCs2wzi5oDhJNdS5kznLCxzxLrefAIsctUYRoz/yMSexpmE8xhoPpp322nt+87v2yMfgcHFqHtsXkvZSqNrF3OyU3brJD9KiCpqBoK06QsU92AewIbi8ZDKRxF7iMsNs5PcEdTLgxMEtPFps9RqVSDwbeqHH4iImGRCKv9IzMr7r+BvpSdjdD8cPvLilzznsAbFANC/VLn/MNBtmyOJ6As7CuIUXG5booOsztjiZAPzbQdk5sj3CCj/PYi4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 SA1PR11MB6894.namprd11.prod.outlook.com (2603:10b6:806:2b1::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8989.16; Wed, 6 Aug
 2025 10:20:38 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca%4]) with mapi id 15.20.9009.013; Wed, 6 Aug 2025
 10:20:38 +0000
Date: Wed, 6 Aug 2025 12:20:33 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: "Greenwalt, Paul" <paul.greenwalt@intel.com>
CC: <intel-wired-lan@lists.osuosl.org>, Aleksandr Loktionov
 <aleksandr.loktionov@intel.com>
Message-ID: <aJMscZekB8CGy03K@boxer>
References: <20250721144858.571211-1-paul.greenwalt@intel.com>
 <aIi2UMNpfF2SLlDU@boxer>
 <6991638d-257b-42bc-b520-b9c814966f7e@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <6991638d-257b-42bc-b520-b9c814966f7e@intel.com>
X-ClientProxiedBy: DU7P189CA0017.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:10:552::31) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|SA1PR11MB6894:EE_
X-MS-Office365-Filtering-Correlation-Id: 31ea148d-c87f-4b1d-c500-08ddd4d2e3a2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?AQlKlpj80vYMVJMJnlxoXt1uwZ8K53xS1zXA+gtLj1CZn7K4mHvAnT/Oznqh?=
 =?us-ascii?Q?/QgPoJOrd0bGrhMATMHIPgm0Hher4OSifi/HYY0IyENHvd/nZ53xmoEO+pGe?=
 =?us-ascii?Q?hETq6bLiVzKjltpsq/qpqv9SCkQXQT+0PMLeOJ1jwmjdqVAibOSlpA8VyX5/?=
 =?us-ascii?Q?PI9Cd/T9Cdxb2Jr25k+Xh2mo0IN0KLmAo8ck1ivsO9CH6ANtTikWAt1OgSDb?=
 =?us-ascii?Q?HQ0sP6gbVkgf9ERaAUGyy/E9EAp7ED5k7eIYfSNu9AmJRKXn7Dno9kjg9v4b?=
 =?us-ascii?Q?yWk82w7fPTTgeLYQT6JRtcIgj/G1qcPP5ehnXAm3OTtHaESSa+McdKYDrxMc?=
 =?us-ascii?Q?E7NUWkMBwQvH4jhlqlnR8owMUK7XwPHMJJvF6Jf9YwtV+4tR2O7eq2ATIMXS?=
 =?us-ascii?Q?Hba/pYjOL2P+BySmBrZfjW9YRQ84Zp8QOcu5GNfj6HGuP6NTXbpocFZrP9Jh?=
 =?us-ascii?Q?x6gPqNNh4h1BQeKwkXkCrrd4rfr82M5exxAMT3FDkxb6ay7rPgVBMktYQiiu?=
 =?us-ascii?Q?CbMhkgHIvRSczzs7FRYSH7Uyap7lRftafaM4ke4CLCMtFvLK2tF99siTpiRO?=
 =?us-ascii?Q?aUG5+ALyDmMgFDPBk/YdRRlBa72RkmyVDlY3Gs0fNWEOwuS+CZJd95pEeMeZ?=
 =?us-ascii?Q?sjt7FFxGUlBLsR3eSwFZ/GUDrd+vjICbg0cf8W9P76nx6Vj+NrPjwzi+CDKa?=
 =?us-ascii?Q?IQEM1oTOoSFfSfVx+aLHNTAyjo8YJ2KRKbVJOf/aZLIGWEnA3MBYiDbozMYJ?=
 =?us-ascii?Q?NELRwqDrKZ1Lg2u7fT4PXIsWHDYYXLBqhOQfa4qcwzOYCKReRzPYtAc61DtV?=
 =?us-ascii?Q?oDFMyMksl66twJypF72ZCdue3p5Q8RBRLwTlF+zRNT/zDrJ/Q99b4q1i1Zpw?=
 =?us-ascii?Q?JCrKZkJcyV8OTabXG/rkazM14LdGT99HdhijDf6OB3QJ7EPAsKKkgJWlnKTv?=
 =?us-ascii?Q?tEi38WmoEto9peOZPr0yCEZytQmNRVs22IFE5ZbbHNtz/uqSeeKEJqb2HrJl?=
 =?us-ascii?Q?Y8xJXJqFhjIQNQVyMtN1fDZlX55iZMv6BYumNzpUYJHiyC+JXPRJ/XWBA4da?=
 =?us-ascii?Q?NFsugAglMrCSl7rsN6vi7/kW7FdjpZElYT2bsEg8PTI4NlnI0zlCXNLDO2vK?=
 =?us-ascii?Q?LPu7rD+9zyM8f4ccEVuTirNhBlhJb65HrGLvUcJ8/Leg6mtF2oqAnVWl//xu?=
 =?us-ascii?Q?CUN/tMp/dcse6lTX8oaBrJQyonaeIGxcZTcpmqmz7PQwAja4blfs2m28Urye?=
 =?us-ascii?Q?ymLfkKBADT2v4CTJZLmK1gA5bZKXSxa4PcQEMRo420S+677OETRL9ZUT+WsF?=
 =?us-ascii?Q?/cLpUNRGL+k6WeuOSpHUd62KVMbZck3+7AQA4DeO+et+vrc/rp3TfkHFSNUf?=
 =?us-ascii?Q?3+hVeuOfi9YNlT1da6Z8qZ40mUshB505M8uY5acoKQ5i5ZSc1NZyvO/BArB/?=
 =?us-ascii?Q?5m6Ig9sE3qc=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?4r3O+1jbnWYprA2h0tmMkeEwPat8R6nC08zE17FwNYXZGRZbUPSlx4DBQQRP?=
 =?us-ascii?Q?H4fIvwxzZzuYnNhfNxQT61fBPgmrG/vir9Yx/8lGVLlGcLf8YCHfNup+bEg3?=
 =?us-ascii?Q?1+Xq2b+jbxs493jRBcvNdmjYKV01mKLzsZ7R2WGUKqej3M0Q/e+ZC4RsobEb?=
 =?us-ascii?Q?ti+7Ic5c0c7sXIGb7pNk5/IYnJ0L6nFS2DBpWshePEg4nIsLUo56HLh/bDKn?=
 =?us-ascii?Q?0bbmT5/XlzMmyab/91gOYIlWYHmnhilh/L0yZOweZN83e2T8QGbg2NIgkXJu?=
 =?us-ascii?Q?OKHbYtys+ai5Qk/tFF4ZBkL6hp26pMYwvwtNG2sBvibynFheWJXobZV7woKj?=
 =?us-ascii?Q?O/d0j0oy0F2Be8Q4CdXpjSkh6uJ8UJ7N8/0BFhQzwXu202iax583NbKG12np?=
 =?us-ascii?Q?Jxy8WlpC8N0Uzg7ehUo+X9iHvTC6qeilyEmOOyK1fCRtFhpqBvEFi0UcnvF5?=
 =?us-ascii?Q?ZC7JohbpLxbMXikjl7DHMhPsUx8FJaoG1jG8xUQOhOpULz4IBvwBQhoR60MR?=
 =?us-ascii?Q?ND6maTeqGyrU30CW9o+BmYhyV93rRQ54QEB/mosmsWo+YuiwMD8odnWufgBk?=
 =?us-ascii?Q?LXTdoTLlFKesP+Djr3sIkcdKSCdFjZKZ5zAFKiD/XlVcERANK5mJhmY3C417?=
 =?us-ascii?Q?+jQiDg89rj1CCS+SR8rrxw3MvANMdrh7Zu05csSmLT4wHY0E9Stabm2yWedW?=
 =?us-ascii?Q?yc7KhcneZ9cxElNClYGLipZac5iZjBkisFyoKjzpbAyOppNIdMhSrtkDeX3i?=
 =?us-ascii?Q?F51Ox08v1JUnyrgcAZ7HYM2Jq8qkDlqQ3dKivaDquDlPqLC4BgbukQ/YZ9gU?=
 =?us-ascii?Q?LVCqzkYjLwOorKCtGAxPFAgT2kNBRRfp+bxlevJL3GQVpB8XDr4QI3JV69np?=
 =?us-ascii?Q?zBo5ZVfZDZQe+MSD2mFbMaacj5jb2RdB13wGk0Zayt9WITlsBCfGl+5hujSv?=
 =?us-ascii?Q?mTiU02T+LRiF/k6JcLkUiIlKrqBRCXHszCca60DIwxTGO+d/Niqd26CQBN0V?=
 =?us-ascii?Q?k4TGlqvRczFIYUtR9p31JOtbqFNgKfGtQLt/czLCOSIckmrncj3V6sjAZ+2m?=
 =?us-ascii?Q?+Bz6/ptST+JkblbCZa4UMe3MWXs78QEBABsPATIUpUxnlSOSrEgsynb9gZDs?=
 =?us-ascii?Q?EbWj8c7VoGRHDOUIdC4JlV6lnqvnynfo/j4hM15ZDt3++t/3bUB0/YiAojoA?=
 =?us-ascii?Q?ISkxlvI0CrYeOPHghA6ASWuV3PXku9nEiL3OdT4pF8QL4coS3s3bhZ2EJXa+?=
 =?us-ascii?Q?ghjhrZyu6J9xvOTsKnH60i3NxYD5hFQPAg7S49Lse7guLbVooVdz/90ajIMm?=
 =?us-ascii?Q?EwGh0LxPF+msX59PEeB9gzk0rXTtCv6BR3OEyiTGsvABP5m1cetyEm8HejqL?=
 =?us-ascii?Q?/ya8a0u25wC13agUUib+kJ4TnpKjnX8O6FWNDYj7jFpUcjrFTRqxvKaWrsmF?=
 =?us-ascii?Q?VuYsNGKT2rLSuyYyH6kA8T/CoeG5FrToXE9zv+QH5nsFXAqkqi2XMzgxjo0A?=
 =?us-ascii?Q?mv+XifQ2jF7cjltzwlRbN4HymddByLfjkNJ+eV/7LRRTJXFsHzhJe8nC8YiF?=
 =?us-ascii?Q?gDiGdOqR5XGwjNk9+DQlO5HfhU703VS/CHaIete/HBE6MpgOv4/WynoZXkB0?=
 =?us-ascii?Q?iw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 31ea148d-c87f-4b1d-c500-08ddd4d2e3a2
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Aug 2025 10:20:38.7636 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QwEwdfZ8vJIYSmoaWWjsIZrvAufAVLlchb+mx+G05/pIiaVrpPzZZneeEIQh/DG6OBBddTg3jFt1aAEGj5ZNPkjB9HUCCK2QPMXzVlMpkQg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6894
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754475644; x=1786011644;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=EyQB9kAL18SughEnklv5msBJ9n9X/O0s6DtkCl8N7Xw=;
 b=YvcotiM1OUyQAwCVcGWruissqnCwNh+Typr3/e3eB1fwnXyrL3hEJg4q
 +e+f3UFN4hsitN5xtJBYDZA2F40ZMUkR6nlV+Cudm2SmhKkOenK+aRpKq
 KSHWn99RYx56MUUyVTDPQunA0qWc9I5UWySOHZH07J8k0dxAhqOnlHoJr
 st2CyinNcZ2z0xdpuLmL757EwTQPQI2Vnu8IiV/XguW4rcuM8BJVWlGsu
 JQxn9nRfk+/+Lnj/ELa8TseOQSF+9PERLU6wYkgBoqeDawqj9j5nnmDmi
 7nlKrxh95YOEacLbj/9mdglaQI7IoryBFCHEKrHEvSZzfHuzUcQXN5Aox
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=YvcotiM1
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5] ice: add E830 Earliest
 TxTime First Offload support
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Aug 05, 2025 at 03:54:04PM -0700, Greenwalt, Paul wrote:
> 
> 
> On 7/29/2025 4:53 AM, Maciej Fijalkowski wrote:
> > On Mon, Jul 21, 2025 at 10:48:58AM -0400, Paul Greenwalt wrote:
> >> E830 supports Earliest TxTime First (ETF) hardware offload, which is
> >> configured via the ETF Qdisc on a per-queue basis (see tc-etf(8)). ETF
> >> introduces a new Tx flow mechanism that utilizes a timestamp ring
> >> (tstamp_ring) alongside the standard Tx ring. This timestamp ring is
> >> used to indicate when hardware will transmit a packet. Tx Time is
> >> supported on the first 2048 Tx queues of the device, and the NVM image
> >> limits the maximum number of Tx queues to 2048 for the device.
> >>
> >> The allocation and initialization of the timestamp ring occur when the
> >> feature is enabled on a specific Tx queue via tc-etf. The requested Tx
> >> Time queue index cannot be greater than the number of Tx queues
> >> (vsi->num_txq).
> >>
> >> To support ETF, the following flags and bitmap are introduced:
> >>
> >>  - ICE_F_TXTIME: Device feature flag set for E830 NICs, indicating ETF
> >>    support.
> >>  - txtime_txqs: PF-level bitmap set when ETF is enabled and cleared
> >>    when disabled for a specific Tx queue. It is used by
> >>    ice_is_txtime_ena() to check if ETF is allocated and configured on
> >>    any Tx queue, which is checked during Tx ring allocation.
> >>  - ICE_TX_FLAGS_TXTIME: Per Tx ring flag set when ETF is allocated and
> >>    configured for a specific Tx queue. It determines ETF status during
> >>    packet transmission and is checked by ice_is_txtime_ena() to verify
> >>    if ETF is enabled on any Tx queue.
> >>
> >> Due to a hardware issue that can result in a malicious driver detection
> >> event, additional timestamp descriptors are required when wrapping
> >> around the timestamp ring. Up to 64 additional timestamp descriptors
> >> are reserved, reducing the available Tx descriptors.
> >>
> >> To accommodate this, ICE_MAX_NUM_DESC_BY_MAC is introduced, defining:
> >>
> >>  - E830: Maximum Tx descriptor count of 8096 (8K - 32 - 64 for timestamp
> >>    fetch descriptors).
> >>  - E810 and E82X: Maximum Tx descriptor count of 8160 (8K - 32) .
> >>
> >> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> >> Co-developed-by: Alice Michael <alice.michael@intel.com>
> >> Signed-off-by: Alice Michael <alice.michael@intel.com>
> >> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>

(...)

> >> +/**
> >> + * ice_cfg_txtime - configure Tx Time for the Tx ring
> >> + * @tx_ring: pointer to the Tx ring structure
> >> + *
> >> + * Return: 0 on success, negative value on failure.
> >> + */
> >> +static int ice_cfg_txtime(struct ice_tx_ring *tx_ring)
> >> +{
> >> +	struct iidc_rdma_core_dev_info *cdev;
> >> +	struct ice_vsi *vsi = tx_ring->vsi;
> >> +	struct ice_pf *pf = vsi->back;
> >> +	u16 queue = tx_ring->q_index;
> >> +	int err, timeout = 50;
> >> +	bool locked = false;
> >> +	struct device *dev;
> >> +
> >> +	while (test_and_set_bit(ICE_CFG_BUSY, pf->state)) {
> >> +		timeout--;
> >> +		if (!timeout)
> >> +			return -EBUSY;
> >> +		usleep_range(1000, 2000);
> >> +	}
> >> +
> >> +	dev = ice_pf_to_dev(pf);
> >> +	cdev = pf->cdev_info;
> >> +	if (cdev && cdev->adev) {
> >> +		mutex_lock(&pf->adev_mutex);
> >> +		device_lock(&cdev->adev->dev);
> >> +		locked = true;
> >> +		if (cdev->adev->dev.driver) {
> >> +			dev_err(dev, "Cannot change TxTime when RDMA is active\n");
> > 
> > huh...all the locks just the find out rdma presence. noob question but
> > couldn't we have this info stored on pf side? out of the scope for this
> > series of course.
> > 
> 
> After review the hardware specifications, this check should be removed.
> The requirement is that Tx Time cannot be enabled on RDMA queues, but
> RDMA queues can be enable as well as LAN Tx Time enable queues.
> 
> > one additional question, why this can't co-exist with rdma? plus can this
> > co-exist with AF_XDP?
> > 
> 
> I'm not aware of any AF_XDP co-existence requirement.

I had a brain fart and thought you might enable zero-copy on tx ring which
would imply you would never be able to execute the code you're adding on
tx hotpath...but then i remembered we allocate a dedicated tx ring for
AF_XDP. So disregard that comment.

> 
> >> +			err = -EBUSY;
> >> +			goto adev_unlock;
> >> +		}
> >> +	}
> >> +
> >> +	err = ice_qp_dis(vsi, queue);
> >> +	if (err) {
> >> +		dev_err(dev, "Failed to disable Tx queue %d for TxTime configuration\n",
> >> +			tx_ring->q_index);
> >> +		goto adev_unlock;
> >> +	}
> >> +
> >> +	err = ice_qp_ena(vsi, queue);
> >> +	if (err) {
> >> +		dev_err(dev, "Failed to enable Tx queue %d for TxTime configuration\n",
> >> +			queue);
> >> +		goto adev_unlock;
> >> +	}
> >> +
> >> +adev_unlock:
> >> +	if (locked) {
> >> +		device_unlock(&cdev->adev->dev);
> >> +		mutex_unlock(&pf->adev_mutex);
> >> +	}
> >> +	clear_bit(ICE_CFG_BUSY, vsi->back->state);
> >> +	return err;
> >> +}
> >> +
> >> +/**
> >> + * ice_offload_txtime - set earliest TxTime first
> >> + * @netdev: network interface device structure
> >> + * @qopt_off: etf queue option offload from the skb to set
> >> + *
> >> + * Return: 0 on success, negative value on failure.
> >> + */
> >> +static int ice_offload_txtime(struct net_device *netdev,
> >> +			      void *qopt_off)
> >> +{
> >> +	struct ice_netdev_priv *np = netdev_priv(netdev);
> >> +	struct ice_pf *pf = np->vsi->back;
> >> +	struct tc_etf_qopt_offload *qopt;
> >> +	struct ice_vsi *vsi = np->vsi;
> >> +	struct ice_tx_ring *tx_ring;
> >> +	int ret = 0;
> >> +
> >> +	if (!ice_is_feature_supported(pf, ICE_F_TXTIME))
> >> +		return -EOPNOTSUPP;
> >> +
> >> +	qopt = qopt_off;
> >> +	if (!qopt_off || qopt->queue < 0 || qopt->queue >= vsi->num_txq)
> >> +		return -EINVAL;
> >> +
> >> +	if (qopt->enable)
> >> +		set_bit(qopt->queue,  pf->txtime_txqs);
> >> +	else
> >> +		clear_bit(qopt->queue, pf->txtime_txqs);
> >> +
> >> +	if (netif_running(vsi->netdev)) {
> >> +		tx_ring = vsi->tx_rings[qopt->queue];
> >> +		ret = ice_cfg_txtime(tx_ring);
> >> +		if (ret)
> >> +			goto err;
> >> +	}
> >> +
> >> +	netdev_info(netdev, "%s TxTime on queue: %i\n",
> >> +		    str_enable_disable(qopt->enable), qopt->queue);
> >> +	return 0;
> >> +
> >> +err:
> >> +	netdev_err(netdev, "Failed to %s TxTime on queue: %i\n",
> >> +		   str_enable_disable(qopt->enable), qopt->queue);
> >> +
> >> +	if (qopt->enable)
> >> +		clear_bit(qopt->queue,  pf->txtime_txqs);
> >> +	else
> >> +		set_bit(qopt->queue,  pf->txtime_txqs);
> > 
> > why would you want to set this bit if you have failed with configuration?
> > 
> 
> The intent of the error handling flow is to return the pf txtime_txqs to
> it's original state. However, since the hardware state becomes undefined
> on disable failure, it's safer to treat the queue as disabled rather
> than optimistically restoring it to enabled state.
> 
> I'll fix this.
> 
> >> +	return ret;
> >> +}
> >> +
> >>  static LIST_HEAD(ice_block_cb_list);
> >>  
> >>  static int
> >> @@ -9365,6 +9490,8 @@ ice_setup_tc(struct net_device *netdev, enum tc_setup_type type,
> >>  			mutex_unlock(&pf->adev_mutex);
> >>  		}
> >>  		return err;
> >> +	case TC_SETUP_QDISC_ETF:
> >> +		return ice_offload_txtime(netdev, type_data);
> >>  	default:
> >>  		return -EOPNOTSUPP;
> >>  	}
> >> diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
> >> index 29e0088ab6b2..d433233a5fa1 100644
> >> --- a/drivers/net/ethernet/intel/ice/ice_txrx.c
> >> +++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
> >> @@ -143,6 +143,55 @@ static struct netdev_queue *txring_txq(const struct ice_tx_ring *ring)
> >>  	return netdev_get_tx_queue(ring->netdev, ring->q_index);
> >>  }
> >>  
> >> +/**
> >> + * ice_clean_tstamp_ring - clean time stamp ring
> >> + * @tx_ring: Tx ring to clean the Time Stamp ring for
> >> + */
> >> +static void ice_clean_tstamp_ring(struct ice_tx_ring *tx_ring)
> >> +{
> >> +	u32 size;
> >> +
> >> +	if (!tx_ring->tstamp_desc)
> >> +		return;
> >> +
> >> +	size = ALIGN(tx_ring->tstamp_count * sizeof(struct ice_ts_desc),
> >> +		     PAGE_SIZE);
> >> +	memset(tx_ring->tstamp_desc, 0, size);
> >> +	tx_ring->tstamp_next_to_use = 0;
> >> +}
> >> +
> >> +/**
> >> + * ice_free_tstamp_ring - free time stamp resources per queue
> >> + * @tx_ring: Tx ring to free the Time Stamp ring for
> >> + */
> >> +static void ice_free_tstamp_ring(struct ice_tx_ring *tx_ring)
> >> +{
> >> +	struct ice_tstamp_ring *tstamp_ring = tx_ring->tstamp_ring;
> >> +	u32 size;
> >> +
> >> +	if (!tx_ring->tstamp_desc)
> >> +		return;
> >> +
> >> +	ice_clean_tstamp_ring(tx_ring);
> >> +	size = ALIGN(tx_ring->tstamp_count * sizeof(struct ice_ts_desc),
> >> +		     PAGE_SIZE);
> >> +	dmam_free_coherent(tx_ring->dev, size, tx_ring->tstamp_desc,
> >> +			   tstamp_ring->dma);
> >> +	tx_ring->tstamp_desc = NULL;
> >> +}
> >> +
> >> +/**
> >> + * ice_free_tx_tstamp_ring - free time stamp resources per Tx ring
> >> + * @tx_ring: Tx ring to free the Time Stamp ring for
> >> + */
> >> +static void ice_free_tx_tstamp_ring(struct ice_tx_ring *tx_ring)
> >> +{
> >> +	ice_free_tstamp_ring(tx_ring);
> >> +	kfree_rcu(tx_ring->tstamp_ring, rcu);
> >> +	tx_ring->tstamp_ring = NULL;
> >> +	tx_ring->flags &= ~ICE_TX_FLAGS_TXTIME;
> >> +}
> >> +
> >>  /**
> >>   * ice_clean_tx_ring - Free any empty Tx buffers
> >>   * @tx_ring: ring to be cleaned
> >> @@ -181,6 +230,9 @@ void ice_clean_tx_ring(struct ice_tx_ring *tx_ring)
> >>  
> >>  	/* cleanup Tx queue statistics */
> >>  	netdev_tx_reset_queue(txring_txq(tx_ring));
> >> +
> >> +	if (ice_is_txtime_cfg(tx_ring))
> >> +		ice_free_tx_tstamp_ring(tx_ring);
> >>  }
> >>  
> >>  /**
> >> @@ -331,6 +383,85 @@ static bool ice_clean_tx_irq(struct ice_tx_ring *tx_ring, int napi_budget)
> >>  	return !!budget;
> >>  }
> >>  
> >> +/**
> >> + * ice_alloc_tstamp_ring - allocate the Time Stamp ring
> >> + * @tx_ring: Tx ring to allocate the Time Stamp ring for
> >> + *
> >> + * Return: 0 on success, negative on error
> >> + */
> >> +static int ice_alloc_tstamp_ring(struct ice_tx_ring *tx_ring)
> >> +{
> >> +	struct ice_tstamp_ring *tstamp_ring;
> >> +
> >> +	/* allocate with kzalloc(), free with kfree_rcu() */
> >> +	tstamp_ring = kzalloc(sizeof(*tstamp_ring), GFP_KERNEL);
> >> +	if (!tstamp_ring)
> >> +		return -ENOMEM;
> >> +
> >> +	tstamp_ring->tx_ring = tx_ring;
> >> +	tx_ring->tstamp_ring = tstamp_ring;
> >> +	tx_ring->tstamp_desc = NULL;
> >> +	tx_ring->tstamp_count = ice_calc_ts_ring_count(tx_ring);
> >> +	tx_ring->flags |= ICE_TX_FLAGS_TXTIME;
> >> +	return 0;
> >> +}
> >> +
> >> +/**
> >> + * ice_setup_tstamp_ring - allocate the Time Stamp ring
> >> + * @tx_ring: Tx ring to set up the Time Stamp ring for
> >> + *
> >> + * Return: 0 on success, negative on error
> >> + */
> >> +static int ice_setup_tstamp_ring(struct ice_tx_ring *tx_ring)
> >> +{
> >> +	struct ice_tstamp_ring *tstamp_ring = tx_ring->tstamp_ring;
> >> +	struct device *dev = tx_ring->dev;
> >> +	u32 size;
> >> +
> >> +	/* round up to nearest page */
> >> +	size = ALIGN(tx_ring->tstamp_count * sizeof(struct ice_ts_desc),
> >> +		     PAGE_SIZE);
> >> +	tx_ring->tstamp_desc = dmam_alloc_coherent(dev, size, &tstamp_ring->dma,
> >> +						   GFP_KERNEL);
> >> +	if (!tx_ring->tstamp_desc) {
> >> +		dev_err(dev, "Unable to allocate memory for Time stamp Ring, size=%d\n",
> >> +			size);
> >> +		return -ENOMEM;
> >> +	}
> >> +
> >> +	tx_ring->tstamp_next_to_use = 0;
> >> +	return 0;
> >> +}
> >> +
> >> +/**
> >> + * ice_alloc_setup_tstamp_ring - Allocate and setup the Time Stamp ring
> >> + * @tx_ring: Tx ring to allocate and setup the Time Stamp ring for
> >> + *
> >> + * Return: 0 on success, negative on error
> >> + */
> >> +int ice_alloc_setup_tstamp_ring(struct ice_tx_ring *tx_ring)
> >> +{
> >> +	struct device *dev = tx_ring->dev;
> >> +	int err;
> >> +
> >> +	err = ice_alloc_tstamp_ring(tx_ring);
> >> +	if (err) {
> >> +		dev_err(dev, "Unable to allocate Time stamp ring for Tx ring %d\n",
> >> +			tx_ring->q_index);
> >> +		return err;
> >> +	}
> >> +
> >> +	err = ice_setup_tstamp_ring(tx_ring);
> >> +	if (err) {
> >> +		dev_err(dev, "Unable to setup Time stamp ring for Tx ring %d\n",
> >> +			tx_ring->q_index);
> >> +		ice_free_tstamp_ring(tx_ring);
> >> +		tx_ring->tstamp_ring = NULL;
> >> +		return err;
> >> +	}
> >> +	return 0;
> >> +}
> >> +
> >>  /**
> >>   * ice_setup_tx_ring - Allocate the Tx descriptors
> >>   * @tx_ring: the Tx ring to set up
> >> @@ -1835,10 +1966,47 @@ ice_tx_map(struct ice_tx_ring *tx_ring, struct ice_tx_buf *first,
> >>  	/* notify HW of packet */
> >>  	kick = __netdev_tx_sent_queue(txring_txq(tx_ring), first->bytecount,
> >>  				      netdev_xmit_more());
> >> -	if (kick)
> >> -		/* notify HW of packet */
> >> -		writel(i, tx_ring->tail);
> >> -
> >> +	if (kick) {
> > 
> > flatten the code by reversing the condition being checked:
> > 	if (!kick)
> > 		return;
> > 	blah blah
> > 
> 
> I will make that change.
> 
> >> +		if (ice_is_txtime_cfg(tx_ring)) {
> >> +			u16 tstamp_count = tx_ring->tstamp_count;
> >> +			u16 j = tx_ring->tstamp_next_to_use;
> > 
> > nit: at some point i think we were insisting to not having stack variables
> > anything less than u32
> > 
> 
> I will make that change.
> 
> >> +			struct ice_ts_desc *ts_desc;
> >> +			struct timespec64 ts;
> >> +			u32 tstamp;
> >> +
> >> +			ts = ktime_to_timespec64(first->skb->tstamp);
> >> +			tstamp = ts.tv_nsec >> ICE_TXTIME_CTX_RESOLUTION_128NS;
> >> +
> >> +			ts_desc = ICE_TS_DESC(tx_ring, j);
> >> +			ts_desc->tx_desc_idx_tstamp =
> >> +					ice_build_tstamp_desc(i, tstamp);
> >> +
> >> +			j++;
> >> +			if (j == tstamp_count) {
> >> +				int fetch = tstamp_count - tx_ring->count;
> > 
> > care about negatives here?
> > 
> 
> No, I will change this to u32.
> 
> >> +
> >> +				j = 0;
> >> +
> >> +				/* To prevent an MDD, when wrapping the tstamp
> >> +				 * ring create additional TS descriptors equal
> >> +				 * to the number of the fetch TS descriptors
> >> +				 * value. HW will merge the TS descriptors with
> >> +				 * the same timestamp value into a single
> >> +				 * descriptor.
> >> +				 */
> >> +				for (; j < fetch; j++) {
> >> +					ts_desc = ICE_TS_DESC(tx_ring, j);
> >> +					ts_desc->tx_desc_idx_tstamp =
> >> +					       ice_build_tstamp_desc(i, tstamp);
> >> +				}
> >> +			}
> >> +			tx_ring->tstamp_next_to_use = j;
> >> +			writel_relaxed(tx_ring->tstamp_next_to_use,
> >> +				       tx_ring->tstamp_tail);
> >> +		} else {
> >> +			writel_relaxed(i, tx_ring->tail);
> >> +		}
> >> +	}
> >>  	return;
> >>  
> >>  dma_error:
> >> diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.h b/drivers/net/ethernet/intel/ice/ice_txrx.h
> >> index fef750c5f288..93089f6147cd 100644
> >> --- a/drivers/net/ethernet/intel/ice/ice_txrx.h
> >> +++ b/drivers/net/ethernet/intel/ice/ice_txrx.h
> >> @@ -310,6 +310,12 @@ enum ice_dynamic_itr {
> >>  #define ICE_TX_LEGACY	1
> >>  
> >>  /* descriptor ring, associated with a VSI */
> >> +struct ice_tstamp_ring {
> >> +	struct ice_tx_ring *tx_ring;	/* Backreference to associated Tx ring */
> >> +	dma_addr_t dma;			/* physical address of ring */
> >> +	struct rcu_head rcu;            /* to avoid race on free */
> >> +} ____cacheline_internodealigned_in_smp;
> >> +
> >>  struct ice_rx_ring {
> >>  	/* CL1 - 1st cacheline starts here */
> >>  	void *desc;			/* Descriptor ring memory */
> >> @@ -388,11 +394,22 @@ struct ice_tx_ring {
> >>  	struct xsk_buff_pool *xsk_pool;
> >>  	u16 next_to_use;
> >>  	u16 next_to_clean;
> >> +	u16 tstamp_next_to_use;		/* Time stamp ring next to use */
> >> +	u16 tstamp_count;		/* Time stamp ring descriptors count */
> >> +	u8 __iomem *tstamp_tail;	/* Time stamp ring tail pointer */
> >> +	void *tstamp_desc;		/* Time stamp descriptor ring memory */
> > 
> > couldn't these members be within ice_tstamp_ring? otherwise explain what
> > made you to put them here, please.
> > 
> 
> Yes, they can be members of ice_tstamp_ring. Since the variables are
> accessed in the fast path they were placed in the ice_tx_ring second
> cacheline instead of ice_tstamp_ring to reduce possible cacheline misses.
> 
> Summary of changes for v6:
> - Fix resource leak in error path
> - Update error handling logic for disable failures
> - Move ice_qp_* functions to preparatory patch
> - Address code style issues (u32 vs u16, code flattening)
> - Propagate error status from ice_set_txq_ctx_vmvf
> 
> Thanks,
> Paul
