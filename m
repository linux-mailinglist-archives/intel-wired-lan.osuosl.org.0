Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ECB4814E95
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Dec 2023 18:27:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6D8E6424F7;
	Fri, 15 Dec 2023 17:27:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6D8E6424F7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702661258;
	bh=oi0LF4syfck0bDQkEqrtw5CwsDa18rgJ5hDvbU36H24=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=8chJ4t6riSr3salylbMl/KWV/SLjJHHnleQwIHyg5qVKmln1f7gvPRuxOS0XEVkQj
	 jrB/Nck+QdwmejE43MRPBjzCOwW3eTJ4FEODg3EVlgMRlgsrtqlFmEwFtzR41CKQ50
	 CEtM2jJA8J3Esdvs7pRsvjNvsHad6OM4PmRa1t4jkHprJgDLIXzilmjXpF0Cd4eR8s
	 QSg0aiyh3qqFeOH7HRzhaQ3LgrU233pFVzkFywB7NraTQtEo0Hzq/VSVF2PUX85Ht3
	 ym8FbXRr1BP3WJNPuwlG0qllGrLAE+cF0gDUW5WAuzAmN4FFekaIvMCcn7VD+51zAm
	 zJhKldobi8fIQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8nr02LDlxttm; Fri, 15 Dec 2023 17:27:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2E12B424DE;
	Fri, 15 Dec 2023 17:27:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2E12B424DE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8AD211BF281
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Dec 2023 17:27:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 60AB383A0A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Dec 2023 17:27:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 60AB383A0A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vK6jwEWrdXcS for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Dec 2023 17:27:29 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp1.osuosl.org (Postfix) with ESMTPS id ADD6B83935
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Dec 2023 17:27:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ADD6B83935
X-IronPort-AV: E=McAfee;i="6600,9927,10925"; a="16856138"
X-IronPort-AV: E=Sophos;i="6.04,279,1695711600"; d="scan'208";a="16856138"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2023 09:27:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10925"; a="778333277"
X-IronPort-AV: E=Sophos;i="6.04,279,1695711600"; d="scan'208";a="778333277"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Dec 2023 09:27:28 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 15 Dec 2023 09:27:28 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 15 Dec 2023 09:27:27 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 15 Dec 2023 09:27:27 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 15 Dec 2023 09:27:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ga88qQAY4hFJNgkWREHGKGtL5z/jPemTvGPZ2b3fQ/wxDdJEU5iUyFNCVyQPYMpWHCCp+s1HN+3hig0NSyHRe0lKzIzi7eo034d6NaJOIqKchRtBkjcNwSArqvNOEkE7I77yOKak+R9c4EKQsEUhs+kpd5udnRcBJpYIgwZ9t2fDAAXTV0c2hrUebJlpN6EZNo6X/nuaTBXZ+Yz1XdFyyRAAy3CQ+crmaSZzVaKhhqmfyuhk+xoo5I7uO5Wq0IAk1o6LPskMpe+Zr/nn4uBY+LsA5IMSl528f8B7gohTZogSegk1YWcAXPfQfRe2flHv5m+3xBCw97XqIUBIPrFGUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=87+UjoFBdMSdCOaMWKB/hp3LdKXvwVMwDQDOfGlXB9o=;
 b=kRHXu4YuW4EfCkpSyax50GB2Bdm5TaUJR0kYDtyexqphJqvHsFQM/voltZ0BFfwvxoKK+a5KnBUG56WPGUp0r/T8XhZHKtf7evlaYh+U2TLLAzlWNnliWHBB010r5pHLSOagrzjtgxSio8/tb2nD49ggyz8y7h5Oe0ame44m09sLUaY1nwYokShcg96gQaIJYidYI2lx5DQvYL0kKBRSRXW0Txr8XP3W1HL9BfWhcjBFRdchN1seln5DLWAWRNAr7loJzSnnV5mkdbWBVgGGV2Ya/07Kift0adfxCY8eZvRZJPWsJ7fhdZi/Q3MnGHkt+ewfMc6nuF9No5BYV1Eykg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5782.namprd11.prod.outlook.com (2603:10b6:510:147::11)
 by CYYPR11MB8360.namprd11.prod.outlook.com (2603:10b6:930:c3::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.32; Fri, 15 Dec
 2023 17:27:23 +0000
Received: from PH0PR11MB5782.namprd11.prod.outlook.com
 ([fe80::dfa4:95a8:ac5:bc37]) by PH0PR11MB5782.namprd11.prod.outlook.com
 ([fe80::dfa4:95a8:ac5:bc37%5]) with mapi id 15.20.7091.032; Fri, 15 Dec 2023
 17:27:23 +0000
Date: Fri, 15 Dec 2023 18:27:17 +0100
From: Michal Kubiak <michal.kubiak@intel.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>
Message-ID: <ZXyMdd0IjI1Op7a6@localhost.localdomain>
References: <20231212145546.396273-1-michal.kubiak@intel.com>
 <78ecdb9f-25e9-4847-87ed-6e8b44a7c71d@molgen.mpg.de>
 <ZXmwR4s25afUbwz3@localhost.localdomain>
 <ZXm22Iw+vSxacpkQ@localhost.localdomain>
 <BL3PR11MB643539AEA523C7427BD255F7C68DA@BL3PR11MB6435.namprd11.prod.outlook.com>
 <4f2559d3-06f0-71c4-e34d-073f2bf84fe4@intel.com>
Content-Disposition: inline
In-Reply-To: <4f2559d3-06f0-71c4-e34d-073f2bf84fe4@intel.com>
X-ClientProxiedBy: DB9PR05CA0014.eurprd05.prod.outlook.com
 (2603:10a6:10:1da::19) To PH0PR11MB5782.namprd11.prod.outlook.com
 (2603:10b6:510:147::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB5782:EE_|CYYPR11MB8360:EE_
X-MS-Office365-Filtering-Correlation-Id: cd79612f-f5a3-4e89-d121-08dbfd93197b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: zjM4kFlPeJ4mI97Eg56cwT+Apo8cbg+0t6kMHDq7FLxGJ4xbQQfjJF7aOwTk1CY3YbE2FLWUqc6yKkg9vP6NXN6Rjx5XcCvCv6XGDMzp8Nm0FYWUc4YjC/ejAZ9ELpKiKmYuHJvczyadOuv/IaTZ/OBVi9GaBs4JNE4AbUv1DKF/f5saJae4MeX6vR6l1gOTyz26fupv2WVBLENTuq7LLQ9qtT7K8KkMgc0kXJY3zQVz8nDG/MC28i/jPdSSbVUl2HzSl9I7KAx5Hpi45FfAnazMXheJvkM/a7NGI7VefvB80BcUaGK1jP3FyjKdyZHvRf9Bt5OQ1wHYDRiOjsBFP55Cf9A8Fsn8PcOGblvo2IPUxnanwr4qAbn5ahDmuQt2M0HhAUABgvXTrM1LmaOgjXaV8rNpgaI7zpyDgrgQve0iYyftzsLPxy/7myQ0T/Fksniew0KSM19dejJFQ+cahbnZOjuu06kzB6UQPZS0Do53/IHDQhzZjrJJL9eZuWqjMwmh1p6F3/kKOiOOh2W4qHz7QvnA6WNL7NerO/G3UsKzs7+XePGyBl24HSmhagdH6MbL92rjAF7ZReNPZRxqKIdFjSmNRhGyKYXKJPcuvToimQFj2AXXOpFWE3d4/QyY
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5782.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(39860400002)(396003)(366004)(136003)(346002)(230922051799003)(230273577357003)(230173577357003)(1800799012)(186009)(64100799003)(451199024)(82960400001)(66476007)(66556008)(6636002)(54906003)(41300700001)(8676002)(6666004)(83380400001)(2906002)(8936002)(44832011)(4326008)(38100700002)(5660300002)(66946007)(316002)(6862004)(86362001)(6486002)(478600001)(53546011)(107886003)(6506007)(6512007)(9686003)(26005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?CZcP1KslfdVj6rgDZ0MIqve9OJ8RsCWqW5izjqWfwIEi7OHlf1/7+6NHJDhj?=
 =?us-ascii?Q?cAHriw4/mAbdyZ2vm7+NFqWJElAEKZKHEy/Sg4D5kawI45tWLY0cXyvj5p/l?=
 =?us-ascii?Q?mbXKT+xZHhXDi2mP0i5rtBvQ9XV0/D1SNivv4s+P4kGaZmYjWh7nniaEwUH0?=
 =?us-ascii?Q?id+0/arPJboQsVIwwoQl5Z2D5MO7wQkhBXn2cg5hcaLI+FtdpbI2jFzk99E+?=
 =?us-ascii?Q?flNVgvLjwB71xB8XlLWEFFpzeit6nxIKZnrp7qIGExTPTMYCyj73WMfxa/8T?=
 =?us-ascii?Q?1tBwHi1DXr+sjiVdPiSQsJOFOr59l/bujl2P2WfkMJwJ7FLYM4ygsRLYsh1O?=
 =?us-ascii?Q?C358+cTgR4FHRAlcSrL6FI+/ugYyl1Hy63iaMGlCYIWXdBQSi3oXPedPpZNR?=
 =?us-ascii?Q?k+obXMypgnBvEXZdTL8f60xBY5ODkdLTZDTm0m7Pg8HRGXtZUsJQ3+hMdxsE?=
 =?us-ascii?Q?cbvgf1b2xTvIitIKb4Vf2+dmpXKJkEc09vnA42EvFsrDT1Xk6qMlgF/sPOHV?=
 =?us-ascii?Q?bj+nHd6DcjSMwgZDjHSmmHaobX/VikbyDYloYZCTb2jw+jOiYQ37JYKF9wyi?=
 =?us-ascii?Q?iZ4bAaxf/lPgSpLSC2SXgQzFr995OFxv5e4KArD+45A4mIfBf5gYUzRr5I5z?=
 =?us-ascii?Q?BFm6JWMex3gFwCaf4RQaN3KNnbAVy4Y6A+zSyqfFfXmNlcnJuT8ra2zA7K88?=
 =?us-ascii?Q?hSPOvQIOcI9dOWgHjmdJpWhQJ4CECaneqSr7upVXpEN9dUDhitECdMgHXBer?=
 =?us-ascii?Q?4LEupBZtFj8gL07W6BFdM/sOjNd7pO9gab2iBDxN7Kc5S6QDf5JOhwASzCm4?=
 =?us-ascii?Q?11ENFmNukJRqbFWkVxpSb3mkxGBVrlMHw6JJm8Y9sef+AW5ENof4hBgC9x/r?=
 =?us-ascii?Q?PB4XUcJgP+3r7yev06K61fMqP56CiToxsSat/XCZ2dBc4FbNuQ2taqbrXUZ1?=
 =?us-ascii?Q?g3mUqee64Bjd6bkeverrYQtj9tr7iDQ00KnG3KYQKdoiP/DDNTWLp7Bpoyvs?=
 =?us-ascii?Q?FRNG5iXO6qVPvH9HD1PwUoz2riB5Jjar7OhEhvgJp6/imHKmBnY5vw2Zo20v?=
 =?us-ascii?Q?GfFdUaH1fsH8P0eg516nMGo39ofJ6QBNIHi79L9axurS21pfmhiDR5DeSQDe?=
 =?us-ascii?Q?8KO2oqiobyTEH82kOaXBNyaDxu1B4hoY9h/ma2qIn+pASmTFadM2l/WlhDii?=
 =?us-ascii?Q?4UmHyBlj0BvkgepGVjMbZA5Qm3Lcn0vayzJuTV1I6Asp2ntRItEE5HJ/cxW7?=
 =?us-ascii?Q?YuZjWVYIt5IUEGzZP8m5RHn3R2qVmJq1gQT/PUdjDDeFmMZYqbL7YgqBK5gl?=
 =?us-ascii?Q?0it1tLvdJUUkDVnV/33JWp1t/mVTE0VXSXk8rED+IdCH715gcVgNodEMo8aQ?=
 =?us-ascii?Q?A0Xmg+/Z/U+WyIx29+tcVmldd4nQ+JIdCAbNNZI1s0WPPQjBB5syTHJxyAmU?=
 =?us-ascii?Q?sjmA9ljtVfFA/X69K1sDyNpZJ3+PnCf20t6lfL+7uepQGw/dYq3t3PcsMvlg?=
 =?us-ascii?Q?NkBFayR6UFRyOfnJ/FMeWk0hvYWktVI0ZwZ6cvWioju9kdJ7ODkyzZYgUa10?=
 =?us-ascii?Q?fo4Y3KUVJ6QIqk7F4acDtRWiHXLxzNLmfrlG82G9AWW4wy0v8fIHLsgEJEWk?=
 =?us-ascii?Q?HA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cd79612f-f5a3-4e89-d121-08dbfd93197b
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5782.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Dec 2023 17:27:23.4205 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TW7RIBqyARqSaAa4s2GhWTh7/kp4i0EAviF/5PHuQDIjnMfjQn+UzzVdCPoEglbMMFG4W9Xdsbp4LDVqw4TsnQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYYPR11MB8360
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702661250; x=1734197250;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=UrQmwQHV8OhWaNEFS+HW+ViN4R0qdQ5rNxWdAITm4Rw=;
 b=SFd/bWnvyOL0P4Il+Oai/ZZZo2/c0kyyYa6/8uMfvS7kq0v9g/UkSMfp
 TqY8hyMPi1UJYN9YJi5T9y8XR8QGHGR1YrtQwwoXdPuMYkNdA5h4Y7MkX
 /cbntCSFDCfYo3l+jJp1NMB0HKgulrH3CTIv5Np+4NxUPO6H/xfi0Za+r
 j/Wp5ePZFZgz5CoOb3cEe/w0iOpgcxLhFUd9ocnUNUu6F45TQ8VAGQRi6
 QT6P+ue9IwaUIe5z9VhhQ+7Pz9X9WG4fTFv21mNIfJSWOuCk3ey1RJUnk
 +3EWtxvFN8F6zBQUNybAu223IgvHKAFzk6dA34UAEsVBkC0d/Cazd/ZPN
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SFd/bWnv
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] idpf: enable WB_ON_ITR
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>, "Fijalkowski,
 Maciej" <maciej.fijalkowski@intel.com>, "Tantilov,
 Emil S" <emil.s.tantilov@intel.com>, "Zaremba,
 Larysa" <larysa.zaremba@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Hay,
 Joshua A" <joshua.a.hay@intel.com>, "Lobakin,
 Aleksander" <aleksander.lobakin@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, "Brady,
 Alan" <alan.brady@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Dec 13, 2023 at 03:06:09PM -0800, Tony Nguyen wrote:
> 
> 
> On 12/13/2023 2:22 PM, Nguyen, Anthony L wrote:
> > 
> > 
> > > -----Original Message-----
> > > From: Kubiak, Michal <michal.kubiak@intel.com>
> > > Sent: Wednesday, December 13, 2023 5:51 AM
> > > 
> > > On Wed, Dec 13, 2023 at 02:23:19PM +0100, Michal Kubiak wrote:
> > > > On Tue, Dec 12, 2023 at 05:50:55PM +0100, Paul Menzel wrote:
> > > > > Dear Michal, dear Joshua,
> > > > > 
> > > > > 
> > > > > Thank you for your patch.
> > > > > 
> > > > > On 12/12/23 15:55, Michal Kubiak wrote:
> > > > > > From: Joshua Hay <joshua.a.hay@intel.com>
> > > > > > 
> > > > > > Tell hardware to writeback completed descriptors even when
> > > > > > interrupts
> > > > > 
> > > > > Should you resend, the verb is spelled with a space: write back.
> > > > 
> > > > Sure, I will fix it.
> > > 
> > > Hi Tony,
> > > 
> > > Could you please add a space ("writeback" -> "write back") when taking the
> > > patch to your tree?
> > 
> > Yep, I can do that.
> 
> Actually, looks like you missed updating kdocs
> 
> drivers/net/ethernet/intel/idpf/idpf_txrx.h:508: warning: Function parameter
> or member 'dyn_ctl_intena_msk_m' not described in 'idpf_intr_reg'
> drivers/net/ethernet/intel/idpf/idpf_txrx.h:508: warning: Function parameter
> or member 'dyn_ctl_wb_on_itr_m' not described in 'idpf_intr_reg'
> drivers/net/ethernet/intel/idpf/idpf_txrx.h:561: warning: Function parameter
> or member 'wb_on_itr' not described in 'idpf_q_vector'
> 
> > Thanks,
> > Tony

Thank you, Tony, for reporting that!
So I will fix kdocs and missing space in v2.

Thanks,
Michal

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
