Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D30496D7945
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Apr 2023 12:08:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 095AF81471;
	Wed,  5 Apr 2023 10:08:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 095AF81471
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680689283;
	bh=PeE73VXKlf7UMldy5EQkW0rGzx7BvXQw362EJZN7xv8=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=mf3faOaONR2TjM0ztQA54/nb6x7mopUSlF4bgwj542vMAyVVf9tDx6+Rm6vyZyHVq
	 BEXE6OvCqOqzrE4AX1t5Y42POm3TMR2nHIxWFD1MXwwoAgEZKV/YGBoMzsagI1SS5A
	 B4C56VQwbgDaGJQMuePrF1uOxyrVXY6m9XWjW2TKtjlSxG5I+EhwPjM/h8DV4w4MLe
	 JEdenXA+fuPRps5QiqmC/iPq00PH/E9Vo0bMQXaibayef0XY9xxNrh7n4B0EfuHuax
	 3abNtQ5ES7wzUBtL56jZ3QXe2pXv/NLbLha+EvNu2VZ/7XYq6jSzK6nIxjoVpzqEya
	 7g8ok9fXBQoNA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ah_q-WK6HfnE; Wed,  5 Apr 2023 10:08:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id F15CF8146D;
	Wed,  5 Apr 2023 10:08:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F15CF8146D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 089711BF3EF
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Apr 2023 10:07:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D1EFA4173E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Apr 2023 10:07:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D1EFA4173E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JDMO101E7pzo for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Apr 2023 10:07:55 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B0F3241688
Received: from NAM10-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam10on2139.outbound.protection.outlook.com [40.107.93.139])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B0F3241688
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Apr 2023 10:07:55 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Wc7amOB6XfCu0tQW4gp8FSWmLPXSP1sKKcj6F0Eqhpih/y2QS3/PutN1B0phIpiPo3McL+Wg4CX0KcLg9Eg/eA7WBaWSgWtWE+GxExtuCSKKqQyQRfRXlzcDDT2Fp/5Hvoj8OTKXS5kYeGBfKUuUAVLWHHT3MYq+KgXPhGSk9xThsh8LxhfIeySONHGhs/AmOqei4SXe2EtpR/B5l9BXoH7gE1u7JWHs0ZbUjxS8/vRBpDvGDCxxsQMCfCRKl1FW8MUSQxHAKXcyP1bo0mrRCWyBjTze/kJlinaq1RHWvaCVoFtQfJsILYPCeWzsm9VrO3WV214RUoA+uhNK5meQ9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kxwm0srBD2vgqcZjoM+0tLWfY6VynmbQKvJvQmo+Ruw=;
 b=kKnA9FEckVk6a9bb8CwrpBXlBelN0nCNqYe7TOXoriY7CgRZOSHK9Izp/pBf6l2WPyY38NHMCG/wzxEW2gyE+wKZiUsNkYauQuEaDc8G4uMm+89jSGGbsvyfGM748pkXEq5sQDjI0Hi8ST6tgtG8Xv99BanxFVrdwwsOngrtb+r2z4rnXO+zHpfxfHDGyzPdEEp7IBg/txDr13yEpCKHyi/NnjdcmuB705Qa2mG8Buv5Hbbydv1afOQa9EmhznOkUtfpcrCZpsMdNvqVlSSrNQBLthd+t1AP4A2Go2QToJzuRMdX1oNFzOrRkOIcg0X1hcZ4a7Y3jv1SjPTWHT+Ejg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=corigine.com; dmarc=pass action=none header.from=corigine.com;
 dkim=pass header.d=corigine.com; arc=none
Received: from PH0PR13MB4842.namprd13.prod.outlook.com (2603:10b6:510:78::6)
 by DM8PR13MB5238.namprd13.prod.outlook.com (2603:10b6:8:9::5) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6254.35; Wed, 5 Apr 2023 10:07:52 +0000
Received: from PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::c506:5243:557e:82cb]) by PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::c506:5243:557e:82cb%5]) with mapi id 15.20.6254.035; Wed, 5 Apr 2023
 10:07:52 +0000
Date: Wed, 5 Apr 2023 12:07:46 +0200
From: Simon Horman <simon.horman@corigine.com>
To: "Linga, Pavan Kumar" <pavan.kumar.linga@intel.com>
Message-ID: <ZC1IctoDRJy1+Us4@corigine.com>
References: <20230329140404.1647925-1-pavan.kumar.linga@intel.com>
 <20230329140404.1647925-10-pavan.kumar.linga@intel.com>
 <ZCcDabCHzjXeN+xI@corigine.com>
 <ee6468d3-8212-7bbc-447b-6c659727f5fd@intel.com>
Content-Disposition: inline
In-Reply-To: <ee6468d3-8212-7bbc-447b-6c659727f5fd@intel.com>
X-ClientProxiedBy: AS4P250CA0021.EURP250.PROD.OUTLOOK.COM
 (2603:10a6:20b:5e3::7) To PH0PR13MB4842.namprd13.prod.outlook.com
 (2603:10b6:510:78::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR13MB4842:EE_|DM8PR13MB5238:EE_
X-MS-Office365-Filtering-Correlation-Id: 99fc3a86-0151-4c44-98b8-08db35bd9e23
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: yiCQfnCYGGEhl1A9hIgwk8P1yB0H8X3CNwPvRfs6GMYImofC4GwXP266scP97Jh8ZCt9wDxTGzVcYfeado9aO2/pcmtCac2DkEbtWQEbZfdHQk2wbUv3Hgjov0xC4QKKxS76a1FwA31A1dmO5agDz5nDDPUnupoT/XtgEd5u7K1cIGMxdPTgstxsvd3p9aONJ49P4u0rsQM/ZkqGHPU1cvZVGit4DlGtidSOG3XT1CED9T+o2Rp8w2V+Rd6wmJIq2ejDosIQifk0bQ8MfSE1GEUB4WMVFWZLS5+WPDZ3ELKdGIpjdO4Kg75c69FfjVDBCOpCZpdtipgNQbdNKpOG5C0CWddEA5NYoWCWvEdB935SkVIcseVq5ZEP3lHIKqbh//RbhkvCuTd9nKVGQBbspCnMzds3GY0VgN659lpkWOsI3D8gz3KUOKi3vRRTE9Jrtq3aO3ODN0K103lVeQgMZSOqgBdZvWhlSTBae8Yn4KyGBibNBrbf+yd8FwJ2vA28/Hf9YistfxjUEmWw2HAzLn4hy592uJ06Zv8jWiDlbmye2hiTW+rcefyR2MFkHFRTrRaGBi6NnccqOMicwDxLPnk6RQwFUIELO15xn5t/nvEAwtAOyguUo9MQFhcxM4cYQFCjO4pXD7//d6DrI9nUW4V984Gpsfa/0fl0kmrnKsI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR13MB4842.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(376002)(39830400003)(136003)(346002)(366004)(396003)(451199021)(38100700002)(2616005)(66946007)(316002)(66476007)(4326008)(66556008)(6916009)(54906003)(5660300002)(7416002)(41300700001)(44832011)(8676002)(8936002)(83380400001)(53546011)(186003)(6486002)(6666004)(478600001)(6506007)(6512007)(86362001)(36756003)(2906002)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ESSdfbllX8FOoUXNDTYKQ1QR37iUzkvGSKqc2QsqV+JJviacB1VJyG9Zq8Jc?=
 =?us-ascii?Q?h8YivgfYwKbQBFbaK6vy1cf6EpvB3YdJIr6cuR2XBBtn49b99iAxnxV7s37y?=
 =?us-ascii?Q?3o8l+51UoJzYvHS/d1zsJfF1wtZq9mEPBfL/3D24Z35TyFnNdakR6EfqyHBw?=
 =?us-ascii?Q?XzSGQUcyaD2DFk2iVQHEsEdxoZWNfpVBLE9fCu9eKdGmmThyowrk92mRR9BS?=
 =?us-ascii?Q?WUiuLrXXbiYNvVwBbkNQC5X6oQpc0B6+F4ZWCzzeDCOADctk4u7vBFg8LxUk?=
 =?us-ascii?Q?/L/9M0V56B9OlqBLf9aqndVVUc7RJHqpITcH6qB0XkWptzH1wvuI1YRKu4/T?=
 =?us-ascii?Q?4jfg1L3Y4gKt+jBqtDNiu9HYqwkAYR3D+RLpSYDByoJvsv+DywP63vPbiWpE?=
 =?us-ascii?Q?6rF4HdmCx+ler8p7nijwtRagH83eiKNNGrD1CSwxBQdMjgrQoLDPboxcPO9L?=
 =?us-ascii?Q?exS9WIt5NHM9dhJG/RcEWnlC2VLrwe7cLwW+nENDpFHUO1nv8Lu+R8g/pDc7?=
 =?us-ascii?Q?2QeplHTlI/noZwP4gdwp9DLim14tD6IBVnd7locgfe8ZdjVv/2+fIlzVzkXJ?=
 =?us-ascii?Q?avBXTcIa4pR7B+YWE46jbo6xvmZczp+aqsjQ+HnCAwXlCm/NfSgqZyJB1dph?=
 =?us-ascii?Q?rs/LpYJwPdFIupdOpm33mgjIf92aV2d/44tf41OGqmEONMz/LH2yVKpNcefu?=
 =?us-ascii?Q?FJ946XMRJODfPUHFT4aCiSpvHJrhRCLc8jVSVV20ekJeiezTUv4tWd7YX7pO?=
 =?us-ascii?Q?X6vEz6SBLzTPNgMENNAGbkcDjZvKBvGvZKU1oqEQIuNpPHzkXIkzvo8zULKX?=
 =?us-ascii?Q?M9TiaLOQn5T3fsKzMdbGXMYkC14FqmiWzByJ35it7lMGbfvXxTKQCBTl8rSO?=
 =?us-ascii?Q?2ceqI5/Wx4nhJ3scmN9YHEYcEMS5FoFApPUu652oGSamWGqCI1uus8wtmJr3?=
 =?us-ascii?Q?XQ3KTbPTvu8wRtWDsN8oFv0aOKt4hn9L5kv+2XxiZrpPRKL1FT6K8Y/1n9Ct?=
 =?us-ascii?Q?zF4DA5AZXmiN2K2aqKiPGikK1gNHkvtwP5wOTv2ihDCKrKLgVknli39cWlTL?=
 =?us-ascii?Q?k2VfZtBW6nC/7detwMqB7ncX3IzIb9CU75YTjjx/WtHGqUZccvkRs0yNsZZB?=
 =?us-ascii?Q?NqhErc7hdgLqatHtrctHqN+WO39IailEB8pSWuidKBzxKq2qnjdSjHLdwMn+?=
 =?us-ascii?Q?l1op+JvTIkSwkOIVqLOWzmXfmatlfM0zGyZ8G9tr0yT7EWsHwxSDs86aLmtr?=
 =?us-ascii?Q?dl+6vsZmG+agi3uD0PaPsRC8/pAEk9qMgKAdigb3ojvmHWKZTJKwuwdft7du?=
 =?us-ascii?Q?aGU7ZYyJpIEiGkSgTsHO3mFkPhsa4pDBO/Co+JPpeENNOVNaCAgIeT4G8HQt?=
 =?us-ascii?Q?G8BEhkET1coFFWFumALvvitBr7D/3wDPv9OdC7eGPxe475BJEVMCJ6mA+Oi7?=
 =?us-ascii?Q?yJT0smz6pKTAgEbFiWRAcWb/qsQ3vwJ6l3zW+3Tb8gHp/JUvuw3l6h5jsS8x?=
 =?us-ascii?Q?G7BV/+bL88rw7wB1ZhyEG2Lzn39lQOrwdQG4udyXRN4XDbcRUwmRyTPMykrd?=
 =?us-ascii?Q?pVoHQCearXzd9a0Spg8RoRXhany6bPb1mfzSKb94sYIKgsqAsTlGkeTTNYni?=
 =?us-ascii?Q?G6Ep5F6+eItXMez2JI4wQtpSw9D/GG4lzQKq5AItmaz3ws0aXCy9afzeByHn?=
 =?us-ascii?Q?tze5eg=3D=3D?=
X-OriginatorOrg: corigine.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 99fc3a86-0151-4c44-98b8-08db35bd9e23
X-MS-Exchange-CrossTenant-AuthSource: PH0PR13MB4842.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Apr 2023 10:07:52.3665 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fe128f2c-073b-4c20-818e-7246a585940c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 99QFlnDHjhkp6MdSqZF3Zn2QBKcSJPoSBtG8xz6RpNBzjHR0sylZsXgh2W+jXMTohGnZ+6wa9+8zDkXm7hh++BqbhGbja5OvfCASIzaf1Jo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR13MB5238
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=corigine.onmicrosoft.com; s=selector2-corigine-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kxwm0srBD2vgqcZjoM+0tLWfY6VynmbQKvJvQmo+Ruw=;
 b=H49b/eZ3Y+PepLhhQm/ewnph3vL6dDuU96RqgxGSdywLHWvw1HXXbCEmZ1KCNKekdc099I7xTY8L5opB0ueKQiLXDFDDv4q3eWugLL0fJ4zhOXwfHjiNA0mH5gVWUez/HSwoVhF7BoRZRXrZADaAMA5pJcVjbcU1p/3Zkbo53io=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=corigine.onmicrosoft.com
 header.i=@corigine.onmicrosoft.com header.a=rsa-sha256
 header.s=selector2-corigine-onmicrosoft-com header.b=H49b/eZ3
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=corigine.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 09/15] idpf: initialize
 interrupts and enable vport
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
Cc: willemb@google.com, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Phani Burra <phani.r.burra@intel.com>,
 decot@google.com, shiraz.saleem@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Apr 05, 2023 at 01:06:49AM +0530, Linga, Pavan Kumar wrote:
> 
> 
> On 3/31/2023 9:29 PM, Simon Horman wrote:
> > On Wed, Mar 29, 2023 at 07:03:58AM -0700, Pavan Kumar Linga wrote:
> > > To further continue 'vport open', initialize all the resources
> > > required for the interrupts. To start with, initialize the
> > > queue vector indices with the ones received from the device
> > > Control Plane. Now that all the TX and RX queues are initialized,
> > > map the RX descriptor and buffer queues as well as TX completion
> > > queues to the allocated vectors. Initialize and enable the napi
> > > handler for the napi polling. Finally, request the IRQs for the
> > > interrupt vectors from the stack and setup the interrupt handler.
> > > 
> > > Once the interrupt init is done, send 'map queue vector', 'enable
> > > queues' and 'enable vport' virtchnl messages to the CP to complete
> > > the 'vport open' flow.
> > > 
> > > Co-developed-by: Alan Brady <alan.brady@intel.com>
> > > Signed-off-by: Alan Brady <alan.brady@intel.com>
> > > Co-developed-by: Joshua Hay <joshua.a.hay@intel.com>
> > > Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
> > > Co-developed-by: Madhu Chittim <madhu.chittim@intel.com>
> > > Signed-off-by: Madhu Chittim <madhu.chittim@intel.com>
> > > Co-developed-by: Phani Burra <phani.r.burra@intel.com>
> > > Signed-off-by: Phani Burra <phani.r.burra@intel.com>
> > > Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> > > Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
> > 
> > Spelling from me again.
> > I think I'll stop there and just mention that you might want to consider
> > adding ./checkpatch.pl --codespell to your CI.
> > 
> > 
> 
> Thanks for pointing at the misspells. Fixed all of them by running codespell
> through all the patches. Changes will be part of the v2 version. As
> suggested, will add the 'codespell' into the CI to catch any misspells in
> advance, during the code development.

Perfect, thanks Pavan.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
