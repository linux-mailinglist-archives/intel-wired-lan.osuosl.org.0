Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EF9D19BF0F9
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Nov 2024 16:00:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 174D980B36;
	Wed,  6 Nov 2024 15:00:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id L9wwIo0Sx7pc; Wed,  6 Nov 2024 15:00:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6925F80C20
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730905223;
	bh=WM8w3mk+ce5hVeb8nwVco9GsYJ9kEPcdt9QsjGXN7K0=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=58Rv7/8w1VIeV7QKqr5duXOlyb8/XfZJ6jLn4BfGjFUHYfEPNjYXvGZ3o3xvXIqXZ
	 coBJwkobqzbMnoXhDltxTM/wiRmuM1WMaQSA9gpyw7yPE7K7tOkWDS1382eomg/uKJ
	 v/5deTS/NDDjb5IxBEnTMYZdsjHFssNYCa//EK/zvhZkqQasac8Rz4naOP5nwDqA11
	 puMsZ2pJoWoOuFP+PFssRKmr0NVVEiIlIBJ3+ukwYFKMVgJfs61dfjGtYHUJmDJ1nk
	 amMyAcrMV7om7op7G2A5C2sza9VXfmNo+F/k2k/QNGU0wEiI2PqBHyXlwu1fL/nRmh
	 WyP0YpDUCrtEA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6925F80C20;
	Wed,  6 Nov 2024 15:00:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 336FB3B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Nov 2024 15:00:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id ED1BD608B8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Nov 2024 15:00:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Crosp4BBXOJY for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Nov 2024 15:00:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=147.75.193.91;
 helo=nyc.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 3410D60729
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3410D60729
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3410D60729
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Nov 2024 15:00:20 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id BE105A43E41;
 Wed,  6 Nov 2024 14:58:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 44FEAC4CEC6;
 Wed,  6 Nov 2024 15:00:17 +0000 (UTC)
Date: Wed, 6 Nov 2024 15:00:15 +0000
From: Simon Horman <horms@kernel.org>
To: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, david.m.ertman@intel.com,
 netdev@vger.kernel.org, Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <20241106150015.GQ4507@kernel.org>
References: <20241028165922.7188-1-mateusz.polchlopek@intel.com>
 <20241102143818.GM1838431@kernel.org>
 <748c0685-cd16-4f7e-b359-91b095fc3d26@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <748c0685-cd16-4f7e-b359-91b095fc3d26@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1730905218;
 bh=ZxhHGcVMGkOTmRlXHYf2j9fcy44PbxWGEr5K4E/whr0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=NaryHrI6t/SKwyRhRkOiIJZWKINoEtt+Q9pO4Mnts9c3ze1EBKf9KgSz2/oYegdws
 KljaPXs2Q00MR6Ouxm8Hwy+HbaiNKnw7VIkrqNgH9NgdYgHRm01qDgGKmEqPlyZpmD
 9H5SGhzg+Dk8/hsPnZK+G99lrnN3KSL/ff24bhW8MpstCBr5d0gBCWolQDL0dsrxs7
 JEcfdaWp20Ow3+myi2l9umKlGs03m9i7b6oJrT++XLtCn98gsmfvWAmVH2HDzM6VGC
 pxQtf+MkSae7dvAqH/aRrYxFu8v6na+uHweNEbbNAMQYAdrFM9463hbpTeC/1ub/Xy
 9pYXeyMG/KDAw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=NaryHrI6
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: change q_index variable
 type to s16 to store -1 value
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

On Mon, Nov 04, 2024 at 01:56:20PM +0100, Mateusz Polchlopek wrote:
> 
> 
> On 11/2/2024 3:38 PM, Simon Horman wrote:
> > On Mon, Oct 28, 2024 at 12:59:22PM -0400, Mateusz Polchlopek wrote:
> > > Fix Flow Director not allowing to re-map traffic to 0th queue when action
> > > is configured to drop (and vice versa).
> > > 
> > > The current implementation of ethtool callback in the ice driver forbids
> > > change Flow Director action from 0 to -1 and from -1 to 0 with an error,
> > > e.g:
> > > 
> > >   # ethtool -U eth2 flow-type tcp4 src-ip 1.1.1.1 loc 1 action 0
> > >   # ethtool -U eth2 flow-type tcp4 src-ip 1.1.1.1 loc 1 action -1
> > >   rmgr: Cannot insert RX class rule: Invalid argument
> > > 
> > > We set the value of `u16 q_index = 0` at the beginning of the function
> > > ice_set_fdir_input_set(). In case of "drop traffic" action (which is
> > > equal to -1 in ethtool) we store the 0 value. Later, when want to change
> > > traffic rule to redirect to queue with index 0 it returns an error
> > > caused by duplicate found.
> > > 
> > > Fix this behaviour by change of the type of field `q_index` from u16 to s16
> > > in `struct ice_fdir_fltr`. This allows to store -1 in the field in case
> > > of "drop traffic" action. What is more, change the variable type in the
> > > function ice_set_fdir_input_set() and assign at the beginning the new
> > > `#define ICE_FDIR_NO_QUEUE_IDX` which is -1. Later, if the action is set
> > > to another value (point specific queue index) the variable value is
> > > overwritten in the function.
> > > 
> > > Fixes: cac2a27cd9ab ("ice: Support IPv4 Flow Director filters")
> > > Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> > > Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> > 
> > This looks good, although I am interested to know what the maximum value
> > for q_index is. And, considering unsigned values are used elsewhere, if
> > using 0xffff within this driver was considered instead of -1.
> > 
> > That notwithstanding,
> > 
> > Reviewed-by: Simon Horman <horms@kernel.org>
> 
> Hi Simon!
> 
> Thanks for Your review.
> What is about q_index: it stores queue index which can be theoretically
> up to few thousands. So in this case s16 should be enough and will be
> able to hold all indexes. I didn't consider 0xffff as this may be
> misleading, I decided to stay with -1.

Thanks. I agree that if we are expecting the maximum (positive) value
to be a few thousand, then the s16-based approach you have taken is a good
one.
